Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POPzq-00041e-1z
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 07:23:58 +0000
Message-ID: <4CF89B06.3070209@flatfrog.com>
Date: Fri, 3 Dec 2010 08:23:50 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CF7AB25.3010604@flatfrog.com>	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
	<4CF7CBD0.7080609@flatfrog.com>
	<B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>
In-Reply-To: <B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox on a 3730
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 2010-12-02 19:34, Premi, Sanjeev wrote:
>> I haven't found any 3530 vs. 3730 diffs in the uart configuration in
>> u-boot or linux (though there is a silicon errata fix in the latest
>> linux-omap-2.6 kernel related to not reading from an empty FIFO).
>>
> Look for the AM37x TRM here:
> http://focus.ti.com/docs/prod/folders/print/am3715.html

Any specific section you were thinking of?  I did look in the UART 
section of the TRM before and established that it was still driven by a 
48 MHz clock.

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
