Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.iad3a.emailsrvr.com ([173.203.187.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVHvI-0000BE-94
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 15:20:13 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <9fe4263a-2331-362f-2e68-7563115a3b8a@mev.co.uk>
Date: Fri, 7 Dec 2018 15:19:58 +0000
MIME-Version: 1.0
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
Subject: GPIO support missing for SoCFPGA?
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi,

Commit 8a680e3c9b5dd8470b7437654877d5439e9a6407 ("ARM: socfpga: Arria10: 
support programming FPGA in PBL") deselected GPIOLIB, so none of the 
SoCFPGA boards support GPIO any more.  There is no mention of this in 
the commit message.  Was this a deliberate change, or accidental?  Where 
is the best place to re-enable the option?

Best regards,
Ian Abbott.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
