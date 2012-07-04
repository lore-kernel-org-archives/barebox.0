Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp-2h.backboneservers.com ([66.6.63.231])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmNbY-0004is-Ue
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 11:18:45 +0000
Received: from Debian-exim by smtp-2h.backboneservers.com with spam-scanned
 (Exim 4.72) (envelope-from <steve@scheftech.com>) id 1SmNbQ-0006CZ-9w
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 11:18:36 +0000
Message-ID: <4FF4267C.2080702@scheftech.com>
Date: Wed, 04 Jul 2012 07:18:20 -0400
From: Steve Schefter <steve@scheftech.com>
MIME-Version: 1.0
References: <1341249753-5480-1-git-send-email-steve@scheftech.com>
 <20120703073605.GT2698@pengutronix.de> <4FF2D611.2040207@scheftech.com>
 <20120704065101.GD2698@pengutronix.de>
In-Reply-To: <20120704065101.GD2698@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Avoid SDRAM access crash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 7/4/2012 2:51 AM, Sascha Hauer wrote:
>  I applied my version because it flushes only
> the relevant parts of the cache and looks more like C ;)

That's fine by me.  Thanks Sascha.

Regards,
	Steve

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
