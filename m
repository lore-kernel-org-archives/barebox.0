Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuZxA-0003cf-R8
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 05:52:49 +0000
Received: by lfbn126 with SMTP id n126so67733070lfb.2
 for <barebox@lists.infradead.org>; Thu, 05 Nov 2015 21:52:26 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Nov 2015 08:52:16 +0300
Message-Id: <1446789139-4781-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] fb & fbconsole misc fixes
To: barebox@lists.infradead.org

Aleksey Kuleshov (3):
  fbconsole: no need to copy extra line
  fb: satisfy semantics for shadowfb's alloc/free
  fb: alloc or free shadowfb whether fb enabled or disabled

 drivers/video/fb.c        | 15 +++++++++++----
 drivers/video/fbconsole.c |  3 ++-
 2 files changed, 13 insertions(+), 5 deletions(-)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
