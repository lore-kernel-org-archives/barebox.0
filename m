Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBhrG-0003Zr-If
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 15:31:24 +0000
Received: by mail-qt1-x82e.google.com with SMTP id k2so20087381qtm.1
 for <barebox@lists.infradead.org>; Wed, 03 Apr 2019 08:31:21 -0700 (PDT)
MIME-Version: 1.0
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 3 Apr 2019 17:31:09 +0200
Message-ID: <CAEp+FuB1y=LgWF6ZDV2JhT+=Qch1H9f6zGqLPgb4Em4E0wriRw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="00000000000005626c0585a1f2d0"
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
Subject: ECC nand 74 code error in barebox 2018.04.10
To: barebox@lists.infradead.org

--00000000000005626c0585a1f2d0
Content-Type: text/plain; charset="UTF-8"

Hello,

   I have the following situation:

   I use imx6ul platforms.
   kernel 4.9.11 from NXP
   barebox 2018.04.10

   I create and update an FIT image(*.itb) using
ubiformat/ubiattach/ubimkvol/ubiupdatevol commands

   I also do this operation from Linux once the kernel was booted.
   Everything worked for a while but at some point the FITIMAGE size
increased over 50 MB and I adapted the nand table in device tree
sources.

  Now the image update from barebox is still working, I update, the
kernel loads and then at the next reboot the target boots correctly.
  But if do the the FIt image update from linux, the update is
finished without warnings but at the next reboot, the barebox will
complained as listed in the attachment and the target won't boot from
nand anymore. Then i have to do the update again but only from
barebox.

  nand partition table is the same in kernel and barebox dts.
  But for images larger than 50 MB somehow if I update from linux, the
barebox will complain about ECC code 74.
  I have enabled the other ECC options(software with/without BCH,
hardware) both in barebox and linux but no change.
  I don't know if/how should I play with the PEB settings.

 Does anybody know how could I get around this issue  or how to
continue with my investigation?

Thanks in advance,
          Mihaita Ivascu

--00000000000005626c0585a1f2d0
Content-Type: text/plain; charset="US-ASCII"; name="NAND_ECC.txt"
Content-Disposition: attachment; filename="NAND_ECC.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_ju1cvvgl0>
X-Attachment-Id: f_ju1cvvgl0

YmFyZWJveCAyMDE4LjA0LjAgIzIgV2VkIEFwciAzIDA3OjU1OjQwIFBEVCAyMDE5DQoNCg0KQm9h
cmQ6IFBoeXRlYyBwaHlDT1JFLWkuTVg2IFVsdHJhIExpdGUgU09NDQpkZXRlY3RlZCBpLk1YNiBV
bHRyYUxpdGUgcmV2aXNpb24gMS4yDQptZGlvX2J1czogbWlpYnVzMDogcHJvYmVkDQpldGgwOiBn
b3QgcHJlc2V0IE1BQyBhZGRyZXNzOiA1MDoyZDpmNDoxNDo5NjowOQ0KbmFuZDogT05GSSBmbGFz
aCBkZXRlY3RlZA0KbmFuZDogTkFORCBkZXZpY2U6IE1hbnVmYWN0dXJlciBJRDogMHgyYywgQ2hp
cCBJRDogMHhkYyAoTWljcm9uIE1UMjlGNEcwOEFCQURBSDQpLCA1MTJNaUIsIHBhZ2Ugc2l6ZTog
MjA0OCwgT09CIHNpemU6IDY0DQpCYWQgYmxvY2sgdGFibGUgZm91bmQgYXQgcGFnZSAyNjIwODAs
IHZlcnNpb24gMHgwMQ0KQmFkIGJsb2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgMjYyMDE2LCB2ZXJz
aW9uIDB4MDENCm5hbmRfYmJ0OiBFQ0MgZXJyb3IgaW4gQkJUIGF0IDB4MDAwMDFmZmUwMDA1DQpu
YW5kX2JidDogRUNDIGVycm9yIGluIEJCVCBhdCAweDAwMDAxZmZjMDAwNQ0KU2Nhbm5pbmcgZGV2
aWNlIGZvciBiYWQgYmxvY2tzDQpCYWQgYmxvY2sgdGFibGUgd3JpdHRlbiB0byAweDAwMDAxZmZl
MDAwMCwgdmVyc2lvbiAweDAxDQpCYWQgYmxvY2sgdGFibGUgd3JpdHRlbiB0byAweDAwMDAxZmZj
MDAwMCwgdmVyc2lvbiAweDAxDQppbXgtdXNiIDIxODQyMDAudXNiOiBVU0IgRUhDSSAxLjAwDQpp
bXgtZXNkaGMgMjE5MDAwMC51c2RoYzogcmVnaXN0ZXJlZCBhcyAyMTkwMDAwLnVzZGhjDQpuZXRj
b25zb2xlOiByZWdpc3RlcmVkIGFzIG5ldGNvbnNvbGUtMQ0KcGh5U09NLWkuTVg2OiBVc2luZyBl
bnZpcm9ubWVudCBpbiBOQU5EIGZsYXNoDQptYWxsb2Mgc3BhY2U6IDB4OGZlN2QzMDAgLT4gMHg5
ZmNmYTVmZiAoc2l6ZSAyNTQuNSBNaUIpDQpydW5uaW5nIC9lbnYvYmluL2luaXQuLi4NCg0KSGl0
IG0gZm9yIG1lbnUgb3IgYW55IG90aGVyIGtleSB0byBzdG9wIGF1dG9ib290OiAgICAxDQpib290
aW5nICduYW5kJw0KbmFuZDAuZml0MTogZXJyb3IgLTc0IChFQ0MgZXJyb3IpIHdoaWxlIHJlYWRp
bmcgNjQgYnl0ZXMgZnJvbSBQRUIgMDowDQpuYW5kMC5maXQxOiBlcnJvciAtNzQgKEVDQyBlcnJv
cikgd2hpbGUgcmVhZGluZyA2NCBieXRlcyBmcm9tIFBFQiAxOjANCm5hbmQwLmZpdDE6IGVycm9y
IC03NCAoRUNDIGVycm9yKSB3aGlsZSByZWFkaW5nIDY0IGJ5dGVzIGZyb20gUEVCIDI6MA0KbmFu
ZDAuZml0MTogZXJyb3IgLTc0IChFQ0MgZXJyb3IpIHdoaWxlIHJlYWRpbmcgNjQgYnl0ZXMgZnJv
bSBQRUIgMzowDQpuYW5kMC5maXQxOiBlcnJvciAtNzQgKEVDQyBlcnJvcikgd2hpbGUgcmVhZGlu
ZyA2NCBieXRlcyBmcm9tIFBFQiA0OjANCm5hbmQwLmZpdDE6IGVycm9yIC03NCAoRUNDIGVycm9y
KSB3aGlsZSByZWFkaW5nIDY0IGJ5dGVzIGZyb20gUEVCIDU6MA0KbmFuZDAuZml0MTogZXJyb3Ig
LTc0IChFQ0MgZXJyb3IpIHdoaWxlIHJlYWRpbmcgNjQgYnl0ZXMgZnJvbSBQRUIgNjowDQpuYW5k
MC5maXQxOiBlcnJvciAtNzQgKEVDQyBlcnJvcikgd2hpbGUgcmVhZGluZyA2NCBieXRlcyBmcm9t
IFBFQiA3OjANCm5hbmQwLmZpdDE6IGVycm9yIC03NCAoRUNDIGVycm9yKSB3aGlsZSByZWFkaW5n
IDY0IGJ5dGVzIGZyb20gUEVCIDg6MA0KbmFuZDAuZml0MTogZXJyb3IgLTc0IChFQ0MgZXJyb3Ip
IHdoaWxlIHJlYWRpbmcgNjQgYnl0ZXMgZnJvbSBQRUIgOTowDQpuYW5kMC5maXQxOiBlcnJvciAt
NzQgKEVDQyBlcnJvcikgd2hpbGUgcmVhZGluZyA2NCBieXRlcyBmcm9tIFBFQiAxMDowDQpuYW5k
MC5maXQxOiBlcnJvciAtNzQgKEVDQyBlcnJvcikgd2hpbGUgcmVhZGluZyA2NCBieXRlcyBmcm9t
IFBFQiAxMTowDQoNCg0KLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Lg0KDQoNCnViaTA6IHNjYW5uaW5nIGlzIGZpbmlzaGVkDQpuYW5kMC5maXQxOiBlcnJvciAtNzQg
KEVDQyBlcnJvcikgd2hpbGUgcmVhZGluZyAyMjUyOCBieXRlcyBmcm9tIFBFQiAyNzM6NDA5Ng0K
bmFuZDAuZml0MTogZXJyb3IgLTc0IChFQ0MgZXJyb3IpIHdoaWxlIHJlYWRpbmcgMjI1MjggYnl0
ZXMgZnJvbSBQRUIgMjc0OjQwOTYNCnViaTAgZXJyb3I6IHZ0YmxfY2hlY2s6IGJhZCBDUkMgYXQg
cmVjb3JkIDI6IDB4ZjExNmMzNmIsIG5vdCAweDAwMDAwMA0KVm9sdW1lIHRhYmxlIHJlY29yZCAy
IGR1bXA6DQogICAgICAgIHJlc2VydmVkX3BlYnMgICAwDQogICAgICAgIGFsaWdubWVudCAgICAg
ICAwDQogICAgICAgIGRhdGFfcGFkICAgICAgICAwDQogICAgICAgIHZvbF90eXBlICAgICAgICAw
DQogICAgICAgIHVwZF9tYXJrZXIgICAgICAwDQogICAgICAgIG5hbWVfbGVuICAgICAgICAwDQog
ICAgICAgIG5hbWUgICAgICAgICAgICBOVUxMDQp1YmkwIGVycm9yOiB2dGJsX2NoZWNrOiBiYWQg
Q1JDIGF0IHJlY29yZCAyOiAweGYxMTZjMzZiLCBub3QgMHgwMDAwMDANClZvbHVtZSB0YWJsZSBy
ZWNvcmQgMiBkdW1wOg0KICAgICAgICByZXNlcnZlZF9wZWJzICAgMA0KICAgICAgICBhbGlnbm1l
bnQgICAgICAgMA0KICAgICAgICBkYXRhX3BhZCAgICAgICAgMA0KICAgICAgICB2b2xfdHlwZSAg
ICAgICAgMA0KICAgICAgICB1cGRfbWFya2VyICAgICAgMA0KICAgICAgICBuYW1lX2xlbiAgICAg
ICAgMA0KICAgICAgICBuYW1lICAgICAgICAgICAgTlVMTA0KdWJpMCBlcnJvcjogcHJvY2Vzc19s
dm9sOiBib3RoIHZvbHVtZSB0YWJsZXMgYXJlIGNvcnJ1cHRlZA0KdWJpMCBlcnJvcjogdWJpX2F0
dGFjaF9tdGRfZGV2OiBmYWlsZWQgdG8gYXR0YWNoIG10ZDAsIGVycm9yIC0yMg0K
--00000000000005626c0585a1f2d0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--00000000000005626c0585a1f2d0--
