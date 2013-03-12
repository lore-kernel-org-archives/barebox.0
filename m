Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f178.google.com ([209.85.217.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFSE5-00035g-Pq
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 16:38:58 +0000
Received: by mail-lb0-f178.google.com with SMTP id n1so148173lba.9
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 09:38:55 -0700 (PDT)
MIME-Version: 1.0
From: "Renaud C." <r.cerrato@til-technologies.fr>
Date: Tue, 12 Mar 2013 17:38:14 +0100
Message-ID: <CA+7xNQm-c=Niy8RWxqc+ZY7MjYh41=Qa=ufwq=L-QvVWOjAHwQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=e0cb4efe3398e5fed204d7bcecab
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] DFU : disable state fix
To: barebox <barebox@lists.infradead.org>

--e0cb4efe3398e5fed204d7bcecab
Content-Type: multipart/alternative; boundary=e0cb4efe3398e5fecb04d7bceca9

--e0cb4efe3398e5fecb04d7bceca9
Content-Type: text/plain; charset=ISO-8859-1

When an USB_REQ_DFU_DETACH request is received, the device state switch
to DFU_STATE_appDETACH, and then wait for an usb reset to switch
to DFU_STATE_dfuIDLE (through dfu_disable() being called).

I noticed that using dfu-util v0.7 on my AT91SAM9260 board, the programming
failed because of the device not entering the DFU_STATE_dfuIDLE after an
usb reset (staying in the DFU_STATE_appDETACH state).

According to the current implementation, once the USB_REQ_DFU_DETACH is
sent and right after the usb reset, if the DFU client set more than one
configuration (by iterating over them for example), the device state will
reset to the DFU_STATE_appDETACH state on the 2nd iteration because of the
following line in set_config (composite.c, line 362) :

...
if(cdev->config)
    reset_config();   // will call dfu_disable() again!
...

The attached patch is a *try* to fix the issue by leaving the device in
the DFU_STATE_dfuIDLE state after an usb reset if already in that
state. dfu-util will complain about the device already in
the DFU_STATE_dfuIDLE on the next start, but everything is still working.

This may need a REVISIT, but since the dfu_disable() gets called on both
configuration change and usb reset, we can't do this easily for now..

--e0cb4efe3398e5fecb04d7bceca9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When an USB_REQ_DFU_DETACH request is received, the device=
 state switch to=A0DFU_STATE_appDETACH, and then wait for an usb reset to s=
witch to=A0DFU_STATE_dfuIDLE (through dfu_disable() being called).=A0<div><=
br></div>

<div>I noticed that using dfu-util v0.7 on my AT91SAM9260 board, the progra=
mming failed because of the device not entering the DFU_STATE_dfuIDLE after=
 an usb reset (staying in the DFU_STATE_appDETACH state).</div><div><br>

<div>According to the current implementation, once the=A0USB_REQ_DFU_DETACH=
 is sent and right after the usb reset,=A0if the DFU client set more than o=
ne configuration (by iterating over them for example), the device state wil=
l reset to the=A0DFU_STATE_appDETACH state on the 2nd iteration because of =
the following line in set_config (composite.c, line 362) :</div>

<div><br></div><div>...</div><div>if(cdev-&gt;config)=A0</div><div>=A0=A0 =
=A0reset_config(); =A0 // will call dfu_disable() again!</div><div>...</div=
><div><br></div><div>The attached patch is a *try* to fix the issue by leav=
ing the device in the=A0DFU_STATE_dfuIDLE state after an usb reset if alrea=
dy in that state.=A0dfu-util will complain about the device already in the=
=A0DFU_STATE_dfuIDLE on the next start, but everything is still working.</d=
iv>

<div><br></div><div>This may need a REVISIT, but since the dfu_disable() ge=
ts called on both configuration change and usb reset, we can&#39;t do this =
easily for now..</div><div><br></div><div><br></div><div><br></div><div>

<br></div><div><br></div><div><br></div><div><br></div><div><br></div></div=
></div>

--e0cb4efe3398e5fecb04d7bceca9--

--e0cb4efe3398e5fed204d7bcecab
Content-Type: application/octet-stream; name="dfu-disable-state-fix.patch"
Content-Disposition: attachment; filename="dfu-disable-state-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_he7967j40

RnJvbSBiMGExMGNhNTk4YzA5MzZmNjhlYzkwYzg4MTY2ZDQ3NGZlZDFiZGQ4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDZXJyYXRvIFJlbmF1ZCA8ci5jZXJyYXRvQHRpbC10ZWNobm9s
b2dpZXMuZnI+CkRhdGU6IE1vbiwgMTEgTWFyIDIwMTMgMTU6MzQ6MzAgKzAxMDAKU3ViamVjdDog
W1BBVENIXSBkZnUgZGlzYWJsZSBzdGF0ZSBmaXgKCi0tLQogZHJpdmVycy91c2IvZ2FkZ2V0L2Rm
dS5jIHwgICAgNiArKy0tLS0KIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC9kZnUuYyBiL2RyaXZl
cnMvdXNiL2dhZGdldC9kZnUuYwppbmRleCBlMDUxODc5Li5lNGFmNTY3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3VzYi9nYWRnZXQvZGZ1LmMKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L2RmdS5jCkBA
IC01MTQsMTQgKzUxNCwxMiBAQCBzdGF0aWMgdm9pZCBkZnVfZGlzYWJsZShzdHJ1Y3QgdXNiX2Z1
bmN0aW9uICpmKQogCXN0cnVjdCBmX2RmdQkJKmRmdSA9IGZ1bmNfdG9fZGZ1KGYpOwogCiAJc3dp
dGNoIChkZnUtPmRmdV9zdGF0ZSkgeworCWNhc2UgREZVX1NUQVRFX2RmdUlETEU6CiAJY2FzZSBE
RlVfU1RBVEVfYXBwREVUQUNIOgogCQlkZnUtPmRmdV9zdGF0ZSA9IERGVV9TVEFURV9kZnVJRExF
OwogCQlicmVhazsKLQljYXNlIERGVV9TVEFURV9kZnVNQU5JRkVTVF9XQUlUX1JTVDoKLQkJZGZ1
LT5kZnVfc3RhdGUgPSBERlVfU1RBVEVfYXBwSURMRTsKLQkJYnJlYWs7CiAJZGVmYXVsdDoKLQkJ
ZGZ1LT5kZnVfc3RhdGUgPSBERlVfU1RBVEVfYXBwREVUQUNIOworCQlkZnUtPmRmdV9zdGF0ZSA9
IERGVV9TVEFURV9hcHBJRExFOwogCQlicmVhazsKIAl9CiAKLS0gCjEuNy4yLjUKCg==
--e0cb4efe3398e5fed204d7bcecab
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--e0cb4efe3398e5fed204d7bcecab--
