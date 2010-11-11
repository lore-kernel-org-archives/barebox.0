Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGPfl-0003cF-RL
	for barebox@lists.infradead.org; Thu, 11 Nov 2010 05:26:10 +0000
Date: Thu, 11 Nov 2010 07:25:49 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101111052549.GB16995@jasper.tkos.co.il>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
	<1289400839-5937-9-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1289400839-5937-9-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/13] mxc_nand: fix correct_data function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Wed, Nov 10, 2010 at 03:53:54PM +0100, Sascha Hauer wrote:
> The v2 controller has a totally different mechanism to check
> whether the data we read had ecc errors or not. Implement this.
> The mechanism in the v2 controller happens to be identical to
> the v3 controller.

Does this mean that the current .correct method in not compatible with v2 
controllers? If so, does this bug makes any read error look like an 
uncorrectable error? Something else (silent corruption)?

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
