Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMXc7-0006pH-PH
 for barebox@lists.infradead.org; Sat, 26 May 2018 11:44:01 +0000
Received: by mail-it0-x242.google.com with SMTP id n64-v6so9844993itb.3
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 04:43:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180525180253.kdgtngm6bgc6xncs@pengutronix.de>
References: <CACvFaDfcd6a3PNphqa5hLtdkzTJFj2dvWo6xdc3DvCGoD9fY9w@mail.gmail.com>
 <20180525180253.kdgtngm6bgc6xncs@pengutronix.de>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Sat, 26 May 2018 13:43:43 +0200
Message-ID: <CACvFaDeZwMxh4cc1A5p1ZO-802e4cy0A7SZF1HQ75Kp8FFQnCQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="0000000000008baf6d056d1a65cc"
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
Subject: Re: [PATCH 1/1] ARM: dts: bcm2836-rpi-2: re-enable booting from SD
 card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

--0000000000008baf6d056d1a65cc
Content-Type: text/plain; charset="UTF-8"

sure,

best regards
Pascal

2018-05-25 20:02 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Pascal,
>
> On Tue, May 22, 2018 at 10:23:36PM +0200, Pascal Vizeli wrote:
>> I do the same as we do with raspberry pi for booting from SDcard:
>> https://git.pengutronix.de/cgit/barebox/commit/arch/arm/dts/bcm2835-rpi.dts?id=abc0447440d68af720127fcca3c17f04ee144fcc
>>
>> Look like the patch for rpi replace tabs with space.
>
> The patch itself looks ok. Could you resend with a signed-off-by
> tag?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--0000000000008baf6d056d1a65cc
Content-Type: application/octet-stream; 
	name="0001-ARM-dts-bcm2836-rpi-2-re-enable-booting-from-SD-card.patch"
Content-Disposition: attachment; 
	filename="0001-ARM-dts-bcm2836-rpi-2-re-enable-booting-from-SD-card.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jhnbu20m0

RnJvbSBlZjcyM2E3NDA0NGM4YjNlZDI5YTFmM2QwNDhkZWJkNTBmYzlkZjk2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXNjYWwgVml6ZWxpIDxwdml6ZWxpQHN5c2hhY2suY2g+CkRh
dGU6IFR1ZSwgMjIgTWF5IDIwMTggMjA6MTE6MTMgKzAwMDAKU3ViamVjdDogW1BBVENIIDEvMV0g
QVJNOiBkdHM6IGJjbTI4MzYtcnBpLTI6IHJlLWVuYWJsZSBib290aW5nIGZyb20gU0QgY2FyZAoK
U2lnbmVkLW9mZi1ieTogUGFzY2FsIFZpemVsaSA8cHZpemVsaUBzeXNoYWNrLmNoPgotLS0KIGFy
Y2gvYXJtL2R0cy9iY20yODM2LXJwaS0yLmR0cyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2JjbTI4MzYtcnBp
LTIuZHRzIGIvYXJjaC9hcm0vZHRzL2JjbTI4MzYtcnBpLTIuZHRzCmluZGV4IDQyYjZhYmIxOC4u
MmZhMWM4YmI0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYmNtMjgzNi1ycGktMi5kdHMKKysr
IGIvYXJjaC9hcm0vZHRzL2JjbTI4MzYtcnBpLTIuZHRzCkBAIC05LDMgKzksMTIgQEAKIAkJcmVn
ID0gPDB4MCAweDA+OwogCX07CiB9OworCismc2RoY2kgeworCXN0YXR1cyA9ICJva2F5IjsKK307
CisKKyZzZGhvc3QgeworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OworCi0tCjIuMTcuMAo=
--0000000000008baf6d056d1a65cc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--0000000000008baf6d056d1a65cc--
