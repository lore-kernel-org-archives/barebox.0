Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTu20-0000sn-Sn
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 18:32:55 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 2317320033
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 19:32:38 +0100 (CET)
Date: Tue, 26 Dec 2017 19:32:36 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171226183236.GA26708@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] build: minimize rebuilds
To: Barebox List <barebox@lists.infradead.org>

Following patchset minimizes re-builds.
With the setup I use at the moment where I run
build tests on 100+ arm related boards I see that the
build time is reduced to half - for an otherwise
clean build with no changes.
In other words - the wall clock time for a
simple "try to build all boards" where nothing
has changed goes from ~2:35 minutes to 1:21 minutes

The patches has been tested in my local setup - and
no missing rebuilds was seen.

Sam Ravnborg (4):
      build: fix that defaultenv is always rebuilt
      build: fix that passwd.h is always built
      build: fix that the bbenv file is always rebuilt
      build: fix that LZO file is always rebuilt

 common/Makefile        | 28 +++++++++++++++-------------
 defaultenv/Makefile    |  4 ++--
 scripts/Kbuild.include | 12 +++++++-----
 scripts/Makefile.lib   |  2 +-
 4 files changed, 25 insertions(+), 21 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
