Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHgO-0008PL-To
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 07:55:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2019 09:55:44 +0200
Message-Id: <20191015075549.4380-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/5] Allow to compile in rsa public keys directly
To: Barebox List <barebox@lists.infradead.org>

So far we relied on U-Boots mkimage tool to generate dts snippets from
RSA public keys which are then compiled into barebox. This series
simplifies this by allowing to compile in RSA public keys directly into
barebox. Keys are retrieved from certificate files in PEM format or from
PKCS#11 URIs.

Sascha Hauer (5):
  Kbuild: Add config_filename macro from kernel
  scripts: Add rsatoc tool
  rsa: let rsa_of_read_key() return a fully allocated key
  rsa: Allow to directly compile in rsa public keys
  fit-image: Use compiled-in keys

 common/image-fit.c                |  27 +-
 crypto/.gitignore                 |   2 +
 crypto/Kconfig                    |  19 ++
 crypto/Makefile                   |  10 +
 crypto/rsa.c                      |  59 +++-
 include/asm-generic/barebox.lds.h |   6 +
 include/rsa.h                     |   5 +-
 scripts/.gitignore                |   1 +
 scripts/Kbuild.include            |  49 ++++
 scripts/Makefile                  |   3 +
 scripts/Makefile.lib              |  18 ++
 scripts/rsatoc.c                  | 445 ++++++++++++++++++++++++++++++
 12 files changed, 629 insertions(+), 15 deletions(-)
 create mode 100644 crypto/.gitignore
 create mode 100644 scripts/rsatoc.c

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
