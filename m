Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jf7-0003Z3-Rp
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 11:55:07 +0000
Message-ID: <12335f3455d4a57921904437c86aaa834a3320df.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 02 Mar 2020 12:55:01 +0100
In-Reply-To: <20200302080539.12295-1-s.hauer@pengutronix.de>
References: <20200302080539.12295-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] firmware: Fix dependencies for firmware in PBL
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, 2020-03-02 at 09:05 +0100, Sascha Hauer wrote:
> The object files for the PBL are not regenerated when the firmware
> files
> are updated. The dependency from the pbl-*.gen.o to the firmware
> files
> are missing, add them.
> 
> Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
