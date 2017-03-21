Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22f.google.com ([2a00:1450:4010:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqHSJ-0006eR-RN
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 10:56:01 +0000
Received: by mail-lf0-x22f.google.com with SMTP id j90so65737695lfk.2
 for <barebox@lists.infradead.org>; Tue, 21 Mar 2017 03:55:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 21 Mar 2017 13:55:28 +0300
Message-Id: <20170321105531.11896-1-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] scripts/tags.sh: adopt some linux kernel commits
To: barebox@lists.infradead.org

Antony Pavlov (3):
  scripts/tags.sh: drop __TestClearPage*() helpers
  tags: Do not try to index defconfigs
  tags: Process Kconfig files in a single pass

 scripts/tags.sh | 23 ++---------------------
 1 file changed, 2 insertions(+), 21 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
