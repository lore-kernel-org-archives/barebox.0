Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexL7-00079V-EP
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:27:22 +0000
Date: Wed, 11 Dec 2019 09:27:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211082719.x3wa46g4xwarnnpg@pengutronix.de>
References: <20191209141114.12130-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209141114.12130-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] images: i.MX: rearrange image rules in
 preparation for boilerplate removal
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2019 at 03:11:12PM +0100, Ahmad Fatoum wrote:
> The following commit will introduce a variable define to remove the
> duplication in the different [supe]*imximg rules.
> 
> Prepare for this by rearranging the command line flags to line up with
> the letters in the extension (i.e. -e -s for esimximg instead of -s -e)
> and by splitting off a multi-target rule into two.
> 
> The former improves readability when the define is introduced, as it is
> then easy to see the correspondence between extension and arguments.
> 
> The latter is needed because we will call the variable for each target.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

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
