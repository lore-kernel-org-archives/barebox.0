Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XeNvU-0000a6-O7
 for barebox@lists.infradead.org; Wed, 15 Oct 2014 12:43:38 +0000
Received: by mail-lb0-f175.google.com with SMTP id u10so935906lbd.6
 for <barebox@lists.infradead.org>; Wed, 15 Oct 2014 05:43:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Oct 2014 16:42:12 +0400
Message-Id: <1413376935-2579-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] Add .mailmap file and a tool to maintain it
To: barebox@lists.infradead.org

Base on original u-boot patchseries by Masahiro Yamada.

See http://lists.denx.de/pipermail/u-boot/2014-July/183687.html


Antony Pavlov (2):
  add .mailmap for proper git-shortlog output
  Update .mailmap using scripts/mailmapper

Masahiro Yamada (1):
  scripts: add mailmapper, a tool to create/update mailmap file

 .mailmap           |  16 ++++++
 scripts/mailmapper | 160 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 176 insertions(+)
 create mode 100644 .mailmap
 create mode 100755 scripts/mailmapper

-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
