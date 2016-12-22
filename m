Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJz5c-0005jZ-E4
 for barebox@lists.infradead.org; Thu, 22 Dec 2016 08:51:05 +0000
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
 <20161221222923.GB24177@ravnborg.org>
From: Christian Hemp <c.hemp@phytec.de>
Message-ID: <8e786abe-cd51-63a4-9dd6-b83360b3f928@phytec.de>
Date: Thu, 22 Dec 2016 09:50:40 +0100
MIME-Version: 1.0
In-Reply-To: <20161221222923.GB24177@ravnborg.org>
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
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,


On 21.12.2016 23:29, Sam Ravnborg wrote:
> Hi Christian.
>
> On Wed, Dec 21, 2016 at 10:38:41PM +0100, Christian Hemp wrote:
>> The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
>> it off. In this case it is posible to get the following errors:
>>      MXS NAND: Error sending command
>>      MXS NAND: Error sending command
>>      MXS NAND: DMA read error
>>
>> This can be fixed if the NAND clk is disabled before we change the clk
>> rate.
> Very interesting.
> I have ~50 targets and a few of these are used for power cycle tests.
> On one of these targets I have seen this exact same pattern - once...
>
> Can you give any hints that makes it simpler to verify your fix or anything?
To reproduce the issue and test the fix I reseted the board in a loop.
For this I added 'reset' to /env/bin/init. With 'reset" in /env/bin/init I
saw the issue after 1 - 2 Minutes.
Also I have done 1000 power cuts and resets without any error in our 
test rack.

power cut:
1. start barebox to prompt
2. power cut

soft reset:
1. start barebox to prompt
2. reset

     Christian

>
>
> This is a board with i.MX6 SoloCore - where we have 2 GiB FLASH + 512 MB RAM.
>
> Anyway - it saved my day to see this landing on the mailing list!
>
> 	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
