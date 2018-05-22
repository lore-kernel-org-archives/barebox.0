Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x230.google.com ([2607:f8b0:4001:c0b::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLDoy-0004Fd-PW
 for barebox@lists.infradead.org; Tue, 22 May 2018 20:23:50 +0000
Received: by mail-it0-x230.google.com with SMTP id z6-v6so1575259iti.4
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 13:23:38 -0700 (PDT)
MIME-Version: 1.0
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Tue, 22 May 2018 22:23:36 +0200
Message-ID: <CACvFaDfcd6a3PNphqa5hLtdkzTJFj2dvWo6xdc3DvCGoD9fY9w@mail.gmail.com>
Content-Type: multipart/mixed; boundary="00000000000079a525056cd13115"
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
Subject: [PATCH 1/1] ARM: dts: bcm2836-rpi-2: re-enable booting from SD card
To: barebox@lists.infradead.org

--00000000000079a525056cd13115
Content-Type: text/plain; charset="UTF-8"

I do the same as we do with raspberry pi for booting from SDcard:
https://git.pengutronix.de/cgit/barebox/commit/arch/arm/dts/bcm2835-rpi.dts?id=abc0447440d68af720127fcca3c17f04ee144fcc

Look like the patch for rpi replace tabs with space.

greets
Pascal

--00000000000079a525056cd13115
Content-Type: application/octet-stream; 
	name="0001-ARM-dts-bcm2836-rpi-2-re-enable-booting-from-SD-card.patch"
Content-Disposition: attachment; 
	filename="0001-ARM-dts-bcm2836-rpi-2-re-enable-booting-from-SD-card.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jhi4l9jx0

RnJvbSBlZjcyM2E3NDA0NGM4YjNlZDI5YTFmM2QwNDhkZWJkNTBmYzlkZjk2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXNjYWwgVml6ZWxpIDxwdml6ZWxpQHN5c2hhY2suY2g+CkRh
dGU6IFR1ZSwgMjIgTWF5IDIwMTggMjA6MTE6MTMgKzAwMDAKU3ViamVjdDogW1BBVENIIDEvMV0g
QVJNOiBkdHM6IGJjbTI4MzYtcnBpLTI6IHJlLWVuYWJsZSBib290aW5nIGZyb20gU0QgY2FyZAoK
LS0tCiBhcmNoL2FybS9kdHMvYmNtMjgzNi1ycGktMi5kdHMgfCA5ICsrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9iY20y
ODM2LXJwaS0yLmR0cyBiL2FyY2gvYXJtL2R0cy9iY20yODM2LXJwaS0yLmR0cwppbmRleCA0MmI2
YWJiMTguLjJmYTFjOGJiNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL2JjbTI4MzYtcnBpLTIu
ZHRzCisrKyBiL2FyY2gvYXJtL2R0cy9iY20yODM2LXJwaS0yLmR0cwpAQCAtOSwzICs5LDEyIEBA
CiAJCXJlZyA9IDwweDAgMHgwPjsKIAl9OwogfTsKKworJnNkaGNpIHsKKwlzdGF0dXMgPSAib2th
eSI7Cit9OworCismc2Rob3N0IHsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOworfTsKKwotLSAKMi4x
Ny4wCgo=
--00000000000079a525056cd13115
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--00000000000079a525056cd13115--
