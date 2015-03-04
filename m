Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2m.mail.yandex.net ([37.140.138.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeb-0007d1-Sf
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:27 +0000
Received: from smtp3m.mail.yandex.net (smtp3m.mail.yandex.net [77.88.61.130])
 by forward2m.mail.yandex.net (Yandex) with ESMTP id 8BD335CA0B11
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:01 +0300 (MSK)
Received: from smtp3m.mail.yandex.net (localhost [127.0.0.1])
 by smtp3m.mail.yandex.net (Yandex) with ESMTP id 4755B27A0013
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:01 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:28 +0300
Message-Id: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 00/18] Update support for RK3188, Radxa Rock board
To: barebox@lists.infradead.org

This series will update support for Radxa Rock board, allowing it
to boot from SD card with Barebox as first-stage loader.

Based on next branch.

v2: Rebased on more recent sources, fixed patches.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
