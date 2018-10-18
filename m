Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDAL2-0003o2-05
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 15:35:53 +0000
Date: Thu, 18 Oct 2018 17:35:39 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181018153538.GC2206@ravnborg.org>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
 <20181018065827.19973-20-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018065827.19973-20-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 19/20] ARM: i.MX: Add missing include
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

While I am in nitpick mode...

On Thu, Oct 18, 2018 at 08:58:26AM +0200, Sascha Hauer wrote:
> mach/generic.h provides protypes for functions that mach-imx/cpu_init.c
protype => prototypes

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
