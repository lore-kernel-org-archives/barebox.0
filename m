Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from your2.active-elements.de ([88.99.59.121] helo=atsonline.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvHI-0006zE-Oy
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 08:49:02 +0000
Received: from Mail-10-6.ATS-Intranet.local (p57800e76.dip0.t-ipconnect.de
 [87.128.14.118])
 by xenon.active-elements.de (Postfix) with ESMTPSA id A7B8940303B0
 for <barebox@lists.infradead.org>; Fri, 25 Oct 2019 10:48:55 +0200 (CEST)
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
References: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
 <a3b5da64-bfab-3f51-cbcd-f75e100b24e4@atsonline.de>
Message-ID: <239d939b-9b3e-d3c8-6f46-5b29aeec1b66@atsonline.de>
Date: Fri, 25 Oct 2019 10:48:54 +0200
MIME-Version: 1.0
In-Reply-To: <a3b5da64-bfab-3f51-cbcd-f75e100b24e4@atsonline.de>
Content-Type: multipart/mixed; boundary="------------84A58FBB0A1F611F3F060428"
Content-Language: en-US
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
Subject: Re: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: barebox@lists.infradead.org

--------------84A58FBB0A1F611F3F060428
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello Sascha, hello barebox-ml.

 > On 2019-07-10 9:58 a.m., Sascha Hauer wrote:
 >> On Mon, Jul 08, 2019 at 04:15:00PM +0200, Andreas Geisenhainer wrote:
 >>> We're running barebox an a Phytec PhyCORE AM335x platform, and the
 >>> behaviour does emerge for the default
 >>> "barebox-am335x-phytec-phycore.img"
 >>> image from barebox.
 >> I just tried to reproduce this on a beaglebone black as this is at least
 >> the same SoC. Unfortunately I was not successful.

I finally found the time to reproduce this on a beaglebone black.
I tried two different barebox versions (v2018.03 and v2019.10)
without any changes to the source.

My current steps where

1) make am335x_mlo_defconfig / am335x_defconfig
	(depending on the version)
2) make
3) copied two files onto the uSD card I booted the boneblack
    from:
     - barebox-am33xx-beaglebone.img (I)
     - barebox-am33xx-phytec-phycore.img (II)
4) booted the boneblack and loaded each file manually using the
    `bootm` command.


I'm working under the following assumption:
  a) the beagleboneblack image is working for our AM335x-phycore
  b) the phytec-phycore image should work on a boneblack
      (at least rudimentary)

When I'm using the OSELAS.2018.02.0 toolchain a) und b) hold up. 
Additionally we get
   c) on the boneblack both images (I) and (II) are working

With the OSELAS.2019.09.0 toolchain, the boneblack image (I) is
working on the boneblack, but the phycore-image (II) is not.

There seem to be at least two slightly different behaviors
I've been observing:
Yesterday it justs stops working, no further output, nothing (see Part 
B) within attachment.
Two days ago it complained about a "unhandled NULL pointer dereference", 
followed by a reset of the chip (i captured that within the attachment 
at C).

One more point: I've chosen to build the toolchains for 
"arm-cortexa8-linux-gnueabihf".
To rule out problems with this decision I build a more generic 
"arm-v7a-linux-gnueabihf"
one, but the problem persists with it, too.

Is there anything more I can do on my end?
I'm open for any ideas, here. :)

with kind regards
Andreas Geisenhainer

--------------84A58FBB0A1F611F3F060428
Content-Type: text/plain; charset="UTF-8"; name="barebox_observations.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="barebox_observations.txt"

CiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEEpIHdvcmtpbmcgYmFyZWJveCAyMDE4
LjAzLjAgY29tcGlsZWQgd2l0aCBPU0VMQVNfMjAxOC4wMgojIyMjIyMjIyMjIyMjIyMKCkxv
YWRpbmcgQVJNIGJhcmVib3ggaW1hZ2UgJy9tbnQvMTAuMC4xLjYvcm9vdC9iYXJlYm94LWFt
MzN4eC1waHl0ZWMtcGh5Y29yZS1uby1zcGkuaW1nJwpleGl0Y2FsbC0+IG52X2V4aXQrMHgx
LzB4MjAKZXhpdGNhbGwtPiBkZXZpY2VzX3NodXRkb3duKzB4MS8weDI4CmV4aXRjYWxsLT4g
YXJjaF9zaHV0ZG93bisweDEvMHgxYwoKCmJhcmVib3ggMjAxOC4wMy4wLWdjZmRkZDhlMDI2
ZGIgIzE0IFdlZCBPY3QgMjMgMTA6NDg6MDYgQ0VTVCAyMDE5CgoKQm9hcmQ6IFBoeXRlYyBw
aHlDT1JFIEFNMzM1eAppbml0Y2FsbC0+IGdsb2JhbHZhcl9pbml0KzB4MS8weDJjCmluaXRj
YWxsLT4gcGxhdGZvcm1faW5pdCsweDEvMHhjCmluaXRjYWxsLT4gbWRpb19idXNfaW5pdCsw
eDEvMHhjCmluaXRjYWxsLT4gdXNiX2J1c19pbml0KzB4MS8weGMKaW5pdGNhbGwtPiBzcGlf
YnVzX2luaXQrMHgxLzB4Ywppbml0Y2FsbC0+IGkyY19idXNfaW5pdCsweDEvMHgxMAppbml0
Y2FsbC0+IGdwaW9fZGVzY19hbGxvYysweDEvMHgxOAppbml0Y2FsbC0+IGZzX2J1c19pbml0
KzB4MS8weGMKaW5pdGNhbGwtPiBkbXRpbWVyX2luaXQrMHgxLzB4MzAKaW5pdGNhbGwtPiBv
Zl9hcm1faW5pdCsweDEvMHgyYwppbml0Y2FsbC0+IHVud2luZF9pbml0KzB4MS8weDI0Cmlu
aXRjYWxsLT4gcGNzX2luaXQrMHgxLzB4Ywppbml0Y2FsbC0+IG5ldF9pbml0KzB4MS8weDY0
CmluaXRjYWxsLT4gaW5pdF9mcysweDEvMHgyYwppbml0Y2FsbC0+IG9tYXBfaW5pdCsweDEv
MHg1Ywppbml0Y2FsbC0+IG5zMTY1NTBfc2VyaWFsX2RyaXZlcl9yZWdpc3RlcisweDEvMHhj
CmluaXRjYWxsLT4gZG9zX3BhcnRpdGlvbl9pbml0KzB4MS8weGMKaW5pdGNhbGwtPiBhbTMz
eHhfc2NybV9pbml0KzB4MS8weGMKaW5pdGNhbGwtPiBtbXVfaW5pdCsweDEvMHgxZTgKWy4u
Ll0KCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBCKSBicm9rZW4gYmFyZWJveCAy
MDE5LjEwLjAgY29tcGlsZWQgd2l0aCBPU0VMQVNfMjAxOS4wOQojIyMjIyMjIwpiYXJlYm94
QFRJIEFNMzM1eCBCZWFnbGVCb25lIGJsYWNrOi9tbnQvbW1jMC4wIGJvb3RtIC12diAtYyBi
YXJlYm94LWFtMzN4eC1waHl0ZWMtcGh5Y29yZS5pbWcKCkxvYWRpbmcgQVJNIGJhcmVib3gg
aW1hZ2UgJ2JhcmVib3gtYW0zM3h4LXBoeXRlYy1waHljb3JlLmltZycKT1MgaW1hZ2Ugbm90
IHlldCByZWxvY2F0ZWQKUGFzc2luZyBjb250cm9sIHRvIE9NQVAgYmFyZWJveCBoYW5kbGVy
CmV4aXRjYWxsLT4gbnZfZXhpdCsweDEvMHgyMApleGl0Y2FsbC0+IHN0YXRlX3NodXRkb3du
KzB4MS8weDIwCmV4aXRjYWxsLT4gZGV2aWNlc19zaHV0ZG93bisweDEvMHgyNApleGl0Y2Fs
bC0+IGFyY2hfc2h1dGRvd24rMHgxLzB4MWMKCi0+IHdhaXRzIGhlcmUgKG5vdGhpbmcgc2Vl
bXMgdG8gaGFwcGVuKQoKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEMpIGJyb2tlbiBi
YXJlYm94IDIwMTguMDMuMCBjb21waWxlZCB3aXRoIE9TRUxBU18yMDE5LjA5CiMjIyMjIyMj
IwoKTG9hZGluZyBBUk0gYmFyZWJveCBpbWFnZSAnL21udC8xMC4wLjEuNi9yb290L2JhcmVi
b3gtYW0zM3h4LXBoeXRlYy1waHljb3JlLW5vLXNwaS5pbWcnCmV4aXRjYWxsLT4gbnZfZXhp
dCsweDEvMHgyMApleGl0Y2FsbC0+IGRldmljZXNfc2h1dGRvd24rMHgxLzB4MjgKZXhpdGNh
bGwtPiBhcmNoX3NodXRkb3duKzB4MS8weDFjCnVuYWJsZSB0byBoYW5kbGUgTlVMTCBwb2lu
dGVyIGRlcmVmZXJlbmNlIGF0IGFkZHJlc3MgMHgwMDAwMDlkYgpwYyA6IFs8ODgwMDlkMWE+
XSAgICBsciA6IFs8ODgwMDlkMzU+XQpzcCA6IDhmZmVmOTE4ICBpcCA6IDAwMDAwMDAwICBm
cCA6IDAwMDAwMDAwCnIxMDogMDAwMDAwMDAgIHI5IDogODgwMDljMjEgIHI4IDogODdmZWE0
MDAKcjcgOiAwMDAwMDAwNCAgcjYgOiA4ZmZlZjk1NCAgcjUgOiA4ODAwOWMxOCAgcjQgOiAw
MDAwMDAwZQpyMyA6IDAxMDAwMDAwICByMiA6IDAwMDAwMDAzICByMSA6IDAwMDAwOWQ4ICBy
MCA6IDAwMDAwMDAyCkZsYWdzOiBuemN2ICBJUlFzIG9mZiAgRklRcyBvbiAgTW9kZSBTVkNf
MzIKCls8OGZlNTJjYTU+XSAodW53aW5kX2JhY2t0cmFjZSsweDEvMHg1OCkgZnJvbSBbPDhm
ZTAwYzExPl0gKHBhbmljKzB4MWQvMHgzNCkKWzw4ZmUwMGMxMT5dIChwYW5pYysweDFkLzB4
MzQpIGZyb20gWzw4ZmU1MTJjZD5dIChkb19leGNlcHRpb24rMHhkLzB4MTApCls8OGZlNTEy
Y2Q+XSAoZG9fZXhjZXB0aW9uKzB4ZC8weDEwKSBmcm9tIFs8OGZlNTEzMmQ+XSAoZG9fZGF0
YV9hYm9ydCsweDIxLzB4MmMpCls8OGZlNTEzMmQ+XSAoZG9fZGF0YV9hYm9ydCsweDIxLzB4
MmMpIGZyb20gWzw4ZmU1MGRkND5dIChkb19hYm9ydF82KzB4NDgvMHg1NCkKCi0+cmVzZXQK

--------------84A58FBB0A1F611F3F060428
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------84A58FBB0A1F611F3F060428--
