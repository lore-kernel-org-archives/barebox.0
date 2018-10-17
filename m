Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gClMT-0002qM-Dd
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 12:55:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id DBD48169A9
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2018 14:45:09 +0200 (CEST)
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gqTEhO3mqbu for <barebox@lists.infradead.org>;
 Wed, 17 Oct 2018 14:45:09 +0200 (CEST)
From: Alexander Dahl <ada@thorsis.com>
Date: Wed, 17 Oct 2018 14:45:04 +0200
Message-ID: <6727441.X3Im0JptJc@ada>
In-Reply-To: <20181017122700.yl5xavieafvjrhav@pengutronix.de>
References: <1539777724792.91226@mixed-mode.de>
 <20181017122700.yl5xavieafvjrhav@pengutronix.de>
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
Subject: Re: Issues compiling barebox on raspberry pi
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>, Kai Che <Kai.Che@mixed-mode.de>

Hello,

Am Mittwoch, 17. Oktober 2018, 14:27:00 CEST schrieb r.hieber@pengutronix.de:
> Unfortunately the documentation was updated before the respective patch
> series was merged. If you pull the branch v2018.04.0/topic/rpi from
> git://git.pengutronix.de/rhi/barebox, you should get a
> barebox-raspberry-pi-3.img. (I think that branch should also be able to
> be rebased onto the current master, but I have not tested that.)

FWIW, the series is based on barebox v2018.04.0. I tried rebasing (already a 
few weeks ago), but it does not even rebase cleanly on top of v2018.05.0.

Greets
Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
