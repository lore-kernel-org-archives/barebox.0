Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnACn-0007VE-TQ
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 20:35:08 +0000
Date: Sun, 12 Mar 2017 21:34:39 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170312203439.GA9544@ravnborg.org>
References: <20170310060732.8955-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170310060732.8955-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] fixup! clk: No-op CLK_OF_DECLARE if not enabled
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 09, 2017 at 10:07:32PM -0800, Andrey Smirnov wrote:
> ---
> 
> Sascha, let's try and see if this fixes the build issues you were
> having with the original patch.
> 
> If you'd rather I spin a v2 of the original patch, let me know.

As Sasha dropped the original patch you can safely prepare a v2
of the original patch with this fix.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
