Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd9xj-0004RM-Lk
 for barebox@lists.infradead.org; Fri, 26 Aug 2016 05:45:56 +0000
Date: Fri, 26 Aug 2016 07:45:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160826054533.GP20657@pengutronix.de>
References: <1472106992-30755-1-git-send-email-s.hauer@pengutronix.de>
 <d3c2af19-1d8f-a078-ef33-3cc43a14d990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3c2af19-1d8f-a078-ef33-3cc43a14d990@gmail.com>
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
Subject: Re: [PATCH v2] ARM: vector_table: Fix creation of second level page
 table
To: Peter Kardos <kardos.peter.sk@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 25, 2016 at 11:32:43PM +0200, Peter Kardos wrote:
> Tested this one as well  with my AT91RM9200 system, v2016.08 + patch; The
> system starts/boots as expected.
> If no one objects, we can consider this issue closed/fixed.

I took this as a
Tested-by: Peter Kardos <kardos.peter.sk@gmail.com>

Thanks for testing.

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
