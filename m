Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiFhG-0002Ut-DT
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 05:17:10 +0000
Date: Wed, 15 Apr 2015 07:16:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150415051648.GI9742@pengutronix.de>
References: <1428927090-4310-1-git-send-email-andrew.smirnov@gmail.com>
 <20150414183914.GC9742@pengutronix.de>
 <CAHQ1cqFU1waM3z8D1ZKDb3zqPyP2GtYAovZo-RZ9Ag2=sCywow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFU1waM3z8D1ZKDb3zqPyP2GtYAovZo-RZ9Ag2=sCywow@mail.gmail.com>
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
Subject: Re: [PATCH] firmware: socfpga: Add necessary dependency to Kconfig
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Apr 14, 2015 at 12:47:46PM -0700, Andrey Smirnov wrote:
> On Tue, Apr 14, 2015 at 11:39 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Apr 13, 2015 at 05:11:30AM -0700, Andrey Smirnov wrote:
> >> ---
> >>  drivers/firmware/Kconfig | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > This patch lacks a signed-off-by. Could you resend it?
> 
> I figured tat since this was just a one line in a build configuration
> file it would be too trivial for copyright assignment, but I can add
> the signed-off-by line in the next version of the patch.

Indeed it's trivial and nobody will doubt this was your work, but where
should I draw the line? Always insisting on the signed-off-by helps us
not thinking about this topic anymore.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
