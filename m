Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXleu-0004oR-IB
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 07:11:25 +0000
Date: Tue, 17 Mar 2015 08:11:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150317071101.GD4927@pengutronix.de>
References: <5506F091.2040009@develer.com>
 <cffe106187616d6ba17018ddbf722f69@develer.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cffe106187616d6ba17018ddbf722f69@develer.com>
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
Subject: Re: [PATCH] net: ping: return an error exit code when connection fails
To: mirko <mirko@develer.com>
Cc: barebox@lists.infradead.org

Hi Mirko,

On Mon, Mar 16, 2015 at 05:09:17PM +0100, mirko wrote:
> Il 2015-03-16 16:02 Mirko Damiani ha scritto:
> >Hi,
> >ping command does not always returns 1 as exit code when connection to
> >host fails.
> >In particular it returns the exit code of the previous run.
> >This patch fixes this issue.
> >
> 
> Sorry, the same patch with proper tabulation characters.

I can confirm that this patch now has tabs instead of spaces, but it
still does not apply because there are some spaces in the context which
shouldn't be there. Anyway, applied it manually, thanks

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
