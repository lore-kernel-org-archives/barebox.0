Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfBuw-0007gQ-9W
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 22:56:47 +0000
Received: by mail-lj1-x22a.google.com with SMTP id q2-v6so31024265lji.10
 for <barebox@lists.infradead.org>; Thu, 03 Jan 2019 14:56:45 -0800 (PST)
Date: Fri, 4 Jan 2019 01:56:41 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190104015641.e6d525f098c5e272694faa62@gmail.com>
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
Subject: barebox on Canon A1100
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Thomas Huth <thuth@redhat.com>, Peter Maydell <peter.maydell@linaro.org>, QEMU Developers <qemu-devel@nongnu.org>, qemu-arm <qemu-arm@nongnu.org>

Hi Sascha!

I have some good news and some bad news.

First the good news.

Barebox was used for Day 18 of QEMU 2018 advent (https://www.qemu-advent-ca=
lendar.org/2018/).

Here is a quote:

  > This is an image for QEMU's emulated Canon A1100 Arm machine:
  > Play 2048 in the Barebox firmware environment.

The bad news.

Current master branch barebox for Canon A1100 does not work under qemu,
barebox v2017.02.0 was used for qemu advent.

Thomas Huth reported the problem in the qemu-devel mailing
list two months ago. Please see https://www.mail-archive.com/qemu-devel@non=
gnu.org/msg571887.html
for details.

The commit a43e2bbc468a71 breaks barebox for Canon A1100:

  > commit a43e2bbc468a71fb8825e8acafb7fac7ad7c6dad
  > Author: Sascha Hauer <s.hauer@pengutronix.de>
  > Date:   Wed Mar 7 10:04:07 2018 +0100
  >
  >    ARM: return positive offset in get_runtime_offset()

Any suggestion?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
