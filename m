Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEbYb-0007I7-DT
 for barebox@lists.infradead.org; Fri, 04 May 2018 14:19:36 +0000
References: <1524222061-8825-1-git-send-email-s.riedmueller@phytec.de>
 <20180502104956.rcrnkvcwqk3fy5qc@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <1a84b0b2-fe9d-6a41-5c77-4a84481591fd@phytec.de>
Date: Fri, 4 May 2018 16:19:15 +0200
MIME-Version: 1.0
In-Reply-To: <20180502104956.rcrnkvcwqk3fy5qc@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] commands: of_display_timings: Add simple-panel support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 02.05.2018 12:49, Sascha Hauer wrote:
> Hi Stefan,
>
> On Fri, Apr 20, 2018 at 01:01:01PM +0200, Stefan Riedmueller wrote:
>> Display timings can now be set with simple-panel method which selects
>> the required timings by the compatible of the simple panel devicetree
>> node.
>>
>> This patch adds an option to set simple panel timings with the
>> of_display_timings command by setting the compatible of the display node.
>> The options -P and -c were implemented. The -P option requires the display
>> node path as argument and the -c option requires the compatible to set.
>>
>> This has one downside. The available simple panel timings cannot be
>> listed since the timings are defined in the kernel. Account for this in the
>> help text.
>>
>> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
>> ---
>>   commands/of_display_timings.c | 65 ++++++++++++++++++++++++++++++++++++++++---
>>   1 file changed, 61 insertions(+), 4 deletions(-)
> This patch seems to be a way to manipulate a device tree property in the
> Linux device tree. How about adding a new option to the of_property
> command which would register a of_fixup instead of doing the operation
> now?
>
> Like this:
>
> of_property -f -s /path/to/node compatible vendor,foo-display

Thats a good idea. My intention was to put it in of_display_timings 
because it is display timing related but I see the advantage of having a 
more generic solution for this. So I put it on my todo and try to send a 
patch soon.

Thanks
Stefan

>
>> +		case 'c':
>> +			compatible = optarg;
>> +			break;
>>   		case 'S':
>>   			timingpath = xzalloc(strlen(optarg) + 1);
>>   			strcpy(timingpath, optarg);
> xstrdup() is what you want here.
>
> Sascha
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
