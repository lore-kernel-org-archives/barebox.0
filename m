Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLOZ-00029b-EG
 for barebox@lists.infradead.org; Fri, 20 Mar 2020 17:25:21 +0000
Message-ID: <0ebd04c8fc9b8cb431e7bb04ce50ad7f208c9a24.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 20 Mar 2020 18:16:44 +0100
In-Reply-To: <1083579.30874.1584708448026@mail.vodafone.de>
References: <1083579.30874.1584708448026@mail.vodafone.de>
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
Subject: Re: suspicious header files diff
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org

Hi Giorgio,

thanks for the report. I've sent a patch to fix this issue.

Regards,
Lucas

Am Freitag, den 20.03.2020, 13:47 +0100 schrieb Giorgio Dal Molin:
> Hi,
> 
> I'm getting a compile error while building barebox for an imx7d after
> configuring in CONFIG_RESET_IMX7:
> 
> ...
>   CHK     include/generated/compile.h
>   CC      drivers/reset/reset-imx7.o
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:181:3: error: 'IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N' undeclared here (not in a function); did you mean 'IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N'?
>   181 |  [IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N] = { SRC_MIPIPHY_RCR, BIT(3) },
>       |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |   IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:181:3: error: array index in initializer not of integer type
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:181:3: note: (near initialization for 'imx8mq_src_signals')
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:182:3: error: 'IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N' undeclared here (not in a function); did you mean 'IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N'?
>   182 |  [IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N] = { SRC_MIPIPHY_RCR, BIT(4) },
>       |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |   IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:182:3: error: array index in initializer not of integer type
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:182:3: note: (near initialization for 'imx8mq_src_signals')
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:183:3: error: 'IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N' undeclared here (not in a function); did you mean 'IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N'?
>   183 |  [IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N] = { SRC_MIPIPHY_RCR, BIT(5) },
>       |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |   IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:183:3: error: array index in initializer not of integer type
> /home/giorgio/projects/wpt_barebox/drivers/reset/reset-imx7.c:183:3: note: (near initialization for 'imx8mq_src_signals')
> make[3]: *** [/home/giorgio/projects/wpt_barebox/scripts/Makefile.build:215: drivers/reset/reset-imx7.o] Error 1
> make[2]: *** [/home/giorgio/projects/wpt_barebox/scripts/Makefile.build:367: drivers/reset] Error 2
> make[1]: *** [/home/giorgio/projects/wpt_barebox/Makefile:804: drivers] Error 2
> make: *** [Makefile:118: sub-make] Error 2
> 
> 
> After a bit of search I've found the following two nearly identical headers:
> 
>  -1- include/dt-bindings/reset/imx8mq-reset.h
>  -2- dts/include/dt-bindings/reset/imx8mq-reset.h
> 
> maybe there is a typo (DSI <=> DIS):
> 
> #define IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N	23
> #define IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N	24
> #define IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N	25
> 
> #define IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N	23
> #define IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N	24
> #define IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N	25
> 
> giorgio
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
