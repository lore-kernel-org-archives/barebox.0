Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWyO-0007O2-5s
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:12:17 +0000
Received: by mail-lj1-x22f.google.com with SMTP id g11-v6so18278242ljk.3
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 05:12:05 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Dec 2018 16:11:40 +0300
Message-Id: <20181205131144.31512-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] checkpatch.pl: port misc linux commits
To: barebox@lists.infradead.org

Antony Pavlov (4):
  checkpatch.pl: add ability to ignore various messages
  checkpatch.pl: check for common memset parameter issues against
    statements
  checkpatch.pl: use SPDX tag
  checkpatch.pl: check for #if 0/#if 1

 scripts/checkpatch.pl | 508 ++++++++++++++++++++++++++++++------------
 1 file changed, 367 insertions(+), 141 deletions(-)

-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
