Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.ord1d.emailsrvr.com ([184.106.54.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVIA4-0002jc-Ug
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 15:35:32 +0000
References: <9fe4263a-2331-362f-2e68-7563115a3b8a@mev.co.uk>
 <20181207152935.b3b2ohuslcex4pec@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <e46cb144-3069-3253-2726-7858b23862bc@mev.co.uk>
Date: Fri, 7 Dec 2018 15:35:15 +0000
MIME-Version: 1.0
In-Reply-To: <20181207152935.b3b2ohuslcex4pec@pengutronix.de>
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
Subject: Re: GPIO support missing for SoCFPGA?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi Sascha,

On 07/12/2018 15:29, Sascha Hauer wrote:
> Hi Ian,
> 
> On Fri, Dec 07, 2018 at 03:19:58PM +0000, Ian Abbott wrote:
>> Hi,
>>
>> Commit 8a680e3c9b5dd8470b7437654877d5439e9a6407 ("ARM: socfpga: Arria10:
>> support programming FPGA in PBL") deselected GPIOLIB, so none of the SoCFPGA
>> boards support GPIO any more.  There is no mention of this in the commit
>> message.  Was this a deliberate change, or accidental?  Where is the best
>> place to re-enable the option?
> 
> Should be fixed by 34a9cd2a46 already, no?
> 
> Sascha

Yes, that should fix it.  I forgot to check the "next" branch.  Sorry 
for the noise.

Best regards,
Ian

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
