Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bBFQc-0007wn-9F
 for barebox@lists.infradead.org; Fri, 10 Jun 2016 05:56:23 +0000
Received: by mail-lf0-x231.google.com with SMTP id u74so39418107lff.2
 for <barebox@lists.infradead.org>; Thu, 09 Jun 2016 22:56:01 -0700 (PDT)
Date: Fri, 10 Jun 2016 08:57:25 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160610085725.0c6ac436ef6f383649064072@gmail.com>
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
Subject: barebox dts/ directory has no updates for several mouths
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha!

I have found that barebox dts/ directory has no updates for several mouths.
I have examined the git://xenbits.xen.org/people/ianc/device-tree-rebasing.=
git repo.
The last commit in the master branch of the repo is

  commit e3e9b78e0ed0b64d2b1d994275673b9bc03a2876
  Merge: 7a07ba8 24952bf
  Author: Ian Campbell <ian.campbell@citrix.com>
  Date:   Tue Feb 23 09:54:50 2016 +0000

      Merge tag 'v4.5-rc5-dts-raw'
    =

      Linux 4.5-rc5

I suppose that Ian have stopped adding commits to this repo.

There is another devicetree-rebasing repo:

  git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebas=
ing.git

The last commit in the master branch of the kernel.org's devicetree-rebasin=
g.git repo is

  commit f4be797ea97710369835bb0f7deaad117a64b84a
  Merge: 8eab989 9cf0f8e
  Author: Ian Campbell <ijc@hellion.org.uk>
  Date:   Mon Jun 6 06:54:58 2016 +0100

      Merge tag 'v4.7-rc2-dts-raw'
    =

      Linux 4.7-rc2

Can we switch to using of kernel.org's devicetree-rebasing.git repo for upd=
ating barebox dts/ dir?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
