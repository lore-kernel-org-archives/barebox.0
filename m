Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmDy-0007wc-P0
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 08:11:00 +0000
Date: Thu, 5 Dec 2019 09:10:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191205081057.by6w6fdaoysy7uov@pengutronix.de>
References: <20191121084005.683-1-ahmad@a3f.at>
 <20191121084005.683-3-ahmad@a3f.at>
 <20191125082848.2rkmumxerinj4oa5@pengutronix.de>
 <c2b99fbf-aed0-ee09-e657-942a5ed25323@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2b99fbf-aed0-ee09-e657-942a5ed25323@pengutronix.de>
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
Subject: Re: [PATCH 3/3] remoteproc: add .stop device parameter for stopping
 remote processor
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 04, 2019 at 02:07:48PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11/25/19 9:28 AM, Sascha Hauer wrote:
> > I would assume that when I can stop the remote processor with this
> > parameter I should be able to start it here as well, no?
> 
> I've yet to think some more about this, but could you merge the first
> two commits now?

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
