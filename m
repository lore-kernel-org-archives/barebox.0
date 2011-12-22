Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdfXA-0007KU-Th
 for barebox@lists.infradead.org; Thu, 22 Dec 2011 10:06:02 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
 <20111222091836.GX27267@pengutronix.de>
Date: Thu, 22 Dec 2011 11:05:46 +0100
In-Reply-To: <20111222091836.GX27267@pengutronix.de> (Sascha Hauer's message
 of "Thu, 22 Dec 2011 10:18:36 +0100")
Message-ID: <87ty4sncp1.fsf@free.fr>
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
Subject: Re: [PATCH V4 1/7] drivers/mtd: move nand.c into core.c
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Hi Robert,
>
> The series looks good now. It works on my pcm043 board and seems to have
> no bisecting breakage anymore. Applied to next.
That's great.

As no good deed goes unpunished, this will trigger the next patchset adding
MSystem's docg3 support, rebased on next :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
