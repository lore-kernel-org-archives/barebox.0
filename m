Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdTiH-0006QI-PT
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 21:28:38 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
 <1324303449-30045-8-git-send-email-robert.jarzmik@free.fr>
 <20111221113210.GU27267@pengutronix.de>
Date: Wed, 21 Dec 2011 22:28:30 +0100
In-Reply-To: <20111221113210.GU27267@pengutronix.de> (Sascha Hauer's message
 of "Wed, 21 Dec 2011 12:32:10 +0100")
Message-ID: <87r4zxaa2p.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V3 7/8] drivers/mtd: split mtd mtdoob devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> mtdoob->mtd = mtd
> is missing here.

As yes, that can't work without this line :) For V4.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
