Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp117.ord1d.emailsrvr.com ([184.106.54.117])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ97H-0008G5-If
 for barebox@lists.infradead.org; Mon, 13 May 2019 11:27:36 +0000
References: <20190510070712.mmcy7sbriyisgzp7@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <b8c0d060-4f16-1895-df02-4c907a7392c4@mev.co.uk>
Date: Mon, 13 May 2019 12:27:32 +0100
MIME-Version: 1.0
In-Reply-To: <20190510070712.mmcy7sbriyisgzp7@pengutronix.de>
Content-Language: en-GB
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: v2019.05.0
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On 10/05/2019 08:07, Sascha Hauer wrote:
> Hi All,
> 
> v2019.05.0 is out. This time we gained initial Layerscape support (for
> the LS1046a) and initial very basic STM32MP1 support. What I like best
> for this release is the improved pstore support. With pstore it's
> possible to access the last kernel log, possibly including oopses and
> panics. Also the barebox log is accessible from the running kernel.
> pstore has been present before, but with this release we got the device
> tree bindings, so now it's only a matter of putting the right thing
> into the device tree to use pstore. Give it a try, it's nice ;)
> 
> Sascha

Hi Sascha,

The official tarball seems to be missing from the download page.  Thanks.

Best regards,
Ian Abbott

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
