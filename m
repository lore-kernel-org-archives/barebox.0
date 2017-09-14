Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.high-consulting.de ([62.245.247.194])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dsP6Z-0000Wi-1O
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 08:02:37 +0000
Received: from [10.1.1.22] (gp-desktop.dyn.high-con.de [10.1.1.22])
 (using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: gp)
 by mail.high-consulting.de (Postfix) with ESMTPSA id A9EC63003B
 for <barebox@lists.infradead.org>; Thu, 14 Sep 2017 09:33:40 +0200 (CEST)
From: Gerd Pauli <gp@high-consulting.de>
Message-ID: <b9903114-97cd-9140-c83e-1303cbcfe845@high-consulting.de>
Date: Thu, 14 Sep 2017 10:02:14 +0200
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------09D00F0A8744D380C9F1B43A"
Content-Language: de-DE
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
Subject: yubikey and aes support for barebox
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------09D00F0A8744D380C9F1B43A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

i'm currently working with barebox and added some ( for me ) usefull
commands and additions:

- yubikey password authentication for barebox (OTP )
- command writef
- command ccrypt ( compatible with
https://sourceforge.net/projects/ccrypt/ )
- CRYPTO_AES Support

wana share this stuff with the community if anyone is interested.

-- 
Regards
Gerd Pauli

Die gesetzlichen Pflichtangaben finden Sie unter:
https://www.crsm.biz/impressum/


--------------09D00F0A8744D380C9F1B43A
Content-Type: text/x-vcard; charset=utf-8;
 name="gp.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="gp.vcf"

begin:vcard
fn:Gerd Pauli
n:Pauli;Gerd
org:HighConsulting GmbH & Co. KG
adr;quoted-printable:Peter-D=C3=B6rfler-Str. 19;;;Gessertshausen;Bayern;86459;Deutschland
email;internet:gp@high-consulting.de
tel;work:+49 821 450788 14
tel;fax:+49 821 450788 24
tel;cell:+49 172 8150144
x-mozilla-html:FALSE
url:http://www.high-consulting.de
version:2.1
end:vcard


--------------09D00F0A8744D380C9F1B43A
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------09D00F0A8744D380C9F1B43A--
