Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqImo-0000fP-MI
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:07:39 +0000
Received: by mail-lb0-f179.google.com with SMTP id c11so818460lbj.24
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:07:13 -0700 (PDT)
Date: Fri, 30 May 2014 13:18:33 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140530131833.e6960587743c31fd85cd7788@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] picotcp.20140530
To: barebox@lists.infradead.org
Cc: Daniele Lacamera <daniele.lacamera@tass.be>

Hi All!

My new barebox with picotcp support brunch is pushed to github:

    https://github.com/frantony/barebox/tree/picotcp.20140530

For this version reworked content of Daniele Lacamera's push request
is used (see https://github.com/frantony/barebox/pull/1).

Changes since picotcp.20140525:

  * rebased over latest barebox;
  * the latest picotcp is used (warnings and big-endian
    tests fixed);
  * add picotcp dhcp client support by Daniele Lacamera
  * qemu mips malta defconfig is dropped as barebox qemu
    malta has no network device support (you can rebase
    over experimental pci branch but it is very different story ...)
  * other small fixes.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
