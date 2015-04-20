Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkJCQ-0002fO-6B
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 21:25:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
 <1429520152-27399-2-git-send-email-l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 23:24:49 +0200
In-Reply-To: <1429520152-27399-2-git-send-email-l.stach@pengutronix.de> (Lucas
 Stach's message of "Mon, 20 Apr 2015 10:55:49 +0200")
Message-ID: <87twwaze5a.fsf@belgarion.home>
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
Subject: Re: [PATCH 2/5] MCI: pxa: depend on right symbol
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Lucas Stach <l.stach@pengutronix.de> writes:

> Now that we also have PXA3XX support the dependency on
> ARCH_PXA is too broad for this driver.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
