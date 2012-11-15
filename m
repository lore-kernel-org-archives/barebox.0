Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.187])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYy82-0001Oh-LE
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 12:01:07 +0000
Message-ID: <50A4D976.4050409@cmotion.eu>
Date: Thu, 15 Nov 2012 13:00:54 +0100
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
 <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
 <20121115114649.GC10369@pengutronix.de>
In-Reply-To: <20121115114649.GC10369@pengutronix.de>
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
Subject: Re: [TX53: boot fixes 0/2] Make TX53 bootable again
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?ISO-8859-1?Q?G=FCnter_Gebhardt?= <guenter.gebhardt@freenet.de>, barebox@lists.infradead.org, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

On 11/15/2012 12:46 PM, Sascha Hauer wrote:
> On Thu, Nov 15, 2012 at 10:57:13AM +0100, Christian Kapeller wrote:
>> Currently KaRo TX53-8030 soc module support is present in next branch, but
>> compiling the default config tx53stk5_defconfig results in an unbootable image.
>>
>> This series 
>>  * makes the TX53-8030 board boot again [1/2]
>>  * fixes compilation of the TX53 board with PBL_IMAGE=n and DO_LOWLEVEL_RESET=n [2/2]
> 
> Applied. Thanks for fixing this.

You're welcome. After all, I am happy to enable others to use hot piece of
boot software on the Karo hardware. Also it is good to see, that other
people are using it.

Cheers,
Christian





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
