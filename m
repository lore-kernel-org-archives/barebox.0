Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVMg8-0006Yf-9c
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 15:02:14 +0000
Message-ID: <533C2657.7040500@ge.com>
Date: Wed, 02 Apr 2014 16:01:43 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1396448321-11342-1-git-send-email-renaud.barbier@ge.com>
 <20140402143500.GA25539@omega.Speedport_W_921V_1_24_000>
In-Reply-To: <20140402143500.GA25539@omega.Speedport_W_921V_1_24_000>
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
Subject: Re: [RESEND PATCH] ppc: P2020RDB: add environment partition support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 02/04/2014 15:35, Alexander Aring wrote:
>> -
>> > +	devfs_add_partition("nor0", 0xf60000, 0x8000, DEVFS_PARTITION_FIXED,
>> > +			"env0");
>> > +	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
>> > +			"self0");
> I think this should be:
> 
> 	devfs_add_partition("nor0", 0xf60000, SZ_512K, DEVFS_PARTITION_FIXED,
> 			"self0");
> 	devfs_add_partition("nor0", 0xf60000 + SZ_512K, SZ_32K, DEVFS_PARTITION_FIXED,
> 			"env0");
> 
> or your version is still correct? Or why you placed the env before self0 with a
> little room there?


The reset vector on this PPC architecture is at the top of the memory
range (0xfffffffc) so the barebox area should be at the top of the flash.

The flash sectors are 128KB so I placed the environment at the start of
previous sector. It is indeed a lots of space lost for environment.





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
