/*
 * Copyright (C) 2013 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

// This file has been auto-generated by code_generator_v8.pm. DO NOT MODIFY!

#ifndef V8TestCallbackInterface_h
#define V8TestCallbackInterface_h

#include "bindings/tests/idls/TestCallbackInterface.h"
#include "bindings/v8/ActiveDOMCallback.h"
#include "bindings/v8/DOMWrapperWorld.h"
#include "bindings/v8/ScopedPersistent.h"

namespace WebCore {

class ExecutionContext;

class V8TestCallbackInterface FINAL : public TestCallbackInterface, public ActiveDOMCallback {
public:
    static PassOwnPtr<V8TestCallbackInterface> create(v8::Handle<v8::Function> callback, ExecutionContext* context)
    {
        ASSERT(context);
        return adoptPtr(new V8TestCallbackInterface(callback, context));
    }

    virtual ~V8TestCallbackInterface();

    virtual void voidMethod() OVERRIDE;
    virtual bool booleanMethod() OVERRIDE;
    virtual void voidMethodBooleanArg(bool boolArg) OVERRIDE;
    virtual void voidMethodSequenceArg(const Vector<RefPtr<TestInterfaceEmpty> >& sequenceArg) OVERRIDE;
    virtual void voidMethodFloatArg(float floatArg) OVERRIDE;
    virtual void voidMethodTestInterfaceEmptyArg(TestInterfaceEmpty* testInterfaceEmptyArg) OVERRIDE;
    virtual void voidMethodTestInterfaceEmptyStringArg(TestInterfaceEmpty* testInterfaceEmptyArg, const String& stringArg) OVERRIDE;
    virtual void callbackWithThisValueVoidMethodStringArg(ScriptValue thisValue, const String& stringArg) OVERRIDE;
    virtual void customVoidMethodTestInterfaceEmptyArg(TestInterfaceEmpty* testInterfaceEmptyArg) OVERRIDE;
    virtual void voidMethodWillBeGarbageCollectedSequenceArg(const WillBeHeapVector<RefPtrWillBeMember<TestInterfaceWillBeGarbageCollected> >& sequenceArg) OVERRIDE;
    virtual void voidMethodWillBeGarbageCollectedArrayArg(const WillBeHeapVector<RefPtrWillBeMember<TestInterfaceWillBeGarbageCollected> >& arrayArg) OVERRIDE;
private:
    V8TestCallbackInterface(v8::Handle<v8::Function>, ExecutionContext*);

    v8::Isolate* m_isolate;
    ScopedPersistent<v8::Function> m_callback;
    RefPtr<DOMWrapperWorld> m_world;
};

}
#endif // V8TestCallbackInterface_h