Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp117.iad3a.emailsrvr.com ([173.203.187.117])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4mYr-0003h0-Od
 for barebox@lists.infradead.org; Thu, 10 Nov 2016 10:26:28 +0000
References: <20161107181624.4262-1-abbotti@mev.co.uk>
 <20161110084945.r5jahnxqy6qe6wbl@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <331d8a3a-0aa5-bbb4-120b-3547e51fcec5@mev.co.uk>
Date: Thu, 10 Nov 2016 10:26:02 +0000
MIME-Version: 1.0
In-Reply-To: <20161110084945.r5jahnxqy6qe6wbl@pengutronix.de>
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
Subject: Re: [PATCH 0/4] net/designware: A few patches from U-Boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 10/11/16 08:49, Sascha Hauer wrote:
> On Mon, Nov 07, 2016 at 06:16:20PM +0000, Ian Abbott wrote:
>> Here are a few old-ish patches for the Synopsys Designware Ethernet
>> driver, ported over from U-Boot.
>>
>> 1) net/designware: Consecutive writes to the same register to be avoided
>> 2) net/designware: Do not select MIIPORT for RGMII interface
>> 3) net: designware: Respect "bus mode" register contents on SW reset
>> 4) net/designware: add explicit reset of {tx|rx}_currdescnum
>
> The patches look ok to me. Do you want me to apply them or should we
> rather wait until you resolved your network issues?

I'm fine with you applying them.  I think my network issues maybe more 
hardware related.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
