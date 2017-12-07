Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMrDE-000443-Dj
 for barebox@lists.infradead.ORG; Thu, 07 Dec 2017 08:07:22 +0000
Date: Thu, 7 Dec 2017 09:06:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171207080657.cxh5cmz7l3ebmd3f@pengutronix.de>
References: <1b31cc71-eae5-8124-1144-318902661e85@smile.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b31cc71-eae5-8124-1144-318902661e85@smile.fr>
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
Subject: Re: bootchooser and state (again)
To: David GARRIOU <david.garriou@smile.fr>
Cc: barebox@lists.infradead.org

On Wed, Dec 06, 2017 at 01:31:39PM +0100, David GARRIOU wrote:
> Hi All,
> 
> I am currently using barebox 2016.11 with a board from Phytec.
> 
> I have problems with state framework and bootchooser.
> 
> I have seen some threads dealing with this subject but with latest versions
> of barebox.
> 
> My first question deals with my version of barebox (2016.11), does it
> support well bootchooser and state framework ?
> 
> Indeed it seems to me that there is a big gap between 2016.11 and latest
> version.

There happened a lot in this area during 2016.11 and now. Please update
to a more recent version. There are many known bugs in the state and
bootchooser code in this old version and we better spend our time in
fixing regressions between your old version and top of tree if there
are any on your board.

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
