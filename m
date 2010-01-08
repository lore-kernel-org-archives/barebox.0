Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NTAzH-0006Sx-TQ
	for barebox@lists.infradead.org; Fri, 08 Jan 2010 09:18:36 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id o089IR0j010590
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Fri, 8 Jan 2010 03:18:29 -0600
Received: from dbde71.ent.ti.com (localhost [127.0.0.1])
	by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id o089IQE9000255
	for <barebox@lists.infradead.org>; Fri, 8 Jan 2010 14:48:26 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Fri, 8 Jan 2010 14:48:24 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB59301E1DFE8A7@dbde02.ent.ti.com>
In-Reply-To: <B85A65D85D7EB246BE421B3FB0FBB59301E1C30908@dbde02.ent.ti.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: Query on default environment
To: "Premi, Sanjeev" <premi@ti.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> From: barebox-bounces@lists.infradead.org [mailto:barebox-bounces@lists.infradead.org] On Behalf Of Premi, Sanjeev
> Sent: Monday, December 28, 2009 7:55 PM
> To: barebox@lists.infradead.org
> Subject: Query on default environment
>
> Hi,
>  
> I was trying to create a default environment for the OMAP3EVM to contain
> basic settings and a 'hello world' script before I could do/add something
> useful. My changes were:
>  
> -# CONFIG_PARTITION is not set
> -# CONFIG_DEFAULT_ENVIRONMENT is not set
> +CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT="board/omap/omap3evm/env"
>  
> But, I did come across this error:
>  
> premi # make
> scripts/kconfig/conf -s arch/arm/Kconfig
> Makefile:1261: *** default environment path empty.  Stop.
> 
> make distclean did not help as well. Somehow, the value of
> CONFIG_DEFAULT_ENVIRONMENT in the defconfig seem to take
> precedence over .config. Though, i can;t be sure as I
> was tinkering all over. But finally when the defconfig
> and .config were same, build was successful.
>  
> Will try to see if i can create a reproducible scenario;
> but, if it give hints, may be a problem to look at. Or
> simple ignore as user error.
>  
>  
> Now, I have "barebox_default_env" built alongside barebox.bin
> How do I get this envronment on the EVM?
>  
> Did go thru docs (http://barebox.org/documentation/barebox-2009.12.0/)
> but did not find the next step.

I plan to spend some time this weekend to update the environment and
post updated. Any pointers will be useful.

Best regards,
Sanjeev

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
