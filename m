Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh8Le-0003rV-MF
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 23:28:28 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1325336164-25760-1-git-send-email-plagnioj@jcrosoft.com>
Date: Sun, 01 Jan 2012 00:28:13 +0100
In-Reply-To: <1325336164-25760-1-git-send-email-plagnioj@jcrosoft.com>
 (Jean-Christophe PLAGNIOL-VILLARD's message of "Sat, 31 Dec 2011
 13:56:04 +0100")
Message-ID: <8739c0tj76.fsf@free.fr>
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
Subject: Re: [PATCH] mtd/core.c: fix MTDPGALG
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

> introduced in commit f76ad819e4971094
> drivers/mtd: cosmetic changes
>
> it's supposed to the invert of the writesize - 1
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
