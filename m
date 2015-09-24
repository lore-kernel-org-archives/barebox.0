Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf214-0002bO-KJ
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 08:36:35 +0000
Received: by lacao8 with SMTP id ao8so55441631lac.3
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 01:36:11 -0700 (PDT)
Date: Thu, 24 Sep 2015 11:58:29 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
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
Subject: Archos G9: barebox board env contains boot-entries-collect
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vicente!

In the current next branch Archos G9 board env contains boot-entries-collec=
t call.

But the boot-entries-collect script was dropped by this commit.

commit 294dc7160e55ffb6b940045fb00f01697dacd660
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Sep 25 07:22:23 2013 +0200

    defenv-2: replace menu with menutree

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
