Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7OdF-0002fe-Qc
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 15:29:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0F93AA003C9
 for <barebox@lists.infradead.org>; Thu, 17 Nov 2016 16:30:02 +0100 (CET)
Date: Thu, 17 Nov 2016 16:29:17 +0100
From: Jan Remmet <J.Remmet@phytec.de>
Message-ID: <20161117152917.GB3095@lws-weitzel2@phytec.de>
References: <20161117134221.GA3095@lws-weitzel2@phytec.de>
MIME-Version: 1.0
In-Reply-To: <20161117134221.GA3095@lws-weitzel2@phytec.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: habv4 on imx6
To: barebox@lists.infradead.org

On Thu, Nov 17, 2016 at 02:42:21PM +0100, Jan Remmet wrote:
> Hello,
> I'm trying to get hab signature working on a imx6.
> 
> So far I have added 
>  #include <mach/habv4-imx6-gencsf.h
> to the .imxcfg flash header.
> 
> and set
>  ONFIG_HABV4, CONFIG_HABV4_TABLE_BIN, CONFIG_HABV4_CSF_CRT_PEM and CONFIG_HABV4_IMG_CRT_PEM
> 
> I also added this to images/Makefile.imx
> 
> CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.simximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
> FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib-signed.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.simximg
> image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib-signed.img
> 
> I got this:
> ...
>   IMX-IMG images/start_phytec_phycore_imx6q_som_emmc_1gib.pblx.simximg
>   Missing --i argument
>   Failed to open
>   images/start_phytec_phycore_imx6q_som_emmc_1gib.pblx.simximg.csfbin: No such
>   file or directory
>   barebox/2016.09.0-phy1-r7.0/cst
>   failed
> 
> Is my setup ok so far? Maybe this is an issue with my version of cst?
> 
> It wants
> -i, --input <csf text file>:
> Input CSF text filename
> 
> cst -v
> Code Signing Tool release version BLN_CST_MAIN_02.03.00

Ok according to the cst Release_Notes.txt it was added in CST 2.3.2. 
I changed imx-image.c to write the csf buffer to a file, but ran into

Error: Cannot open key file ../CSF1_1_sha256_4096_65537_v3_usr_key.pem
30345296:error:0907B068:PEM routines:PEM_READ_BIO_PRIVATEKEY:bad password
read:pem_pkey.c:109:
cst tool failed: No such file or directory

Jan

> 
> Jan
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
