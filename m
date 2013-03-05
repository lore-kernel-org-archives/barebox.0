Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCuo8-0000UE-0e
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 16:33:41 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 953EDDC174C
 for <barebox@lists.infradead.org>; Tue,  5 Mar 2013 17:44:39 +0100 (CET)
Date: Tue, 5 Mar 2013 17:32:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130305163241.GN23022@game.jcrosoft.org>
References: <1362498748.832582078@f53.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362498748.832582078@f53.mail.ru>
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
Subject: Re: debug in PBL
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 19:52 Tue 05 Mar     , Alexander Shiyan wrote:
> Hello All.
> 
> I tried to compile latest bb.
> pcm038 + pbl + debug level 7
> 
> Compilation failed with following error:
>   LD      arch/arm/pbl/zbarebox
> arch/arm/mach-imx/built-in-pbl.o: In function `imx_nand_load_image':
> /home/git/bb-mar05/arch/arm/mach-imx/external-nand-boot.c:232: undefined reference to `printf'
> 
> How we should handle debug messages in PBL in this case?
you can not use the printf in the pbl you need to yse debug_ll

Best Regards,
J.
> Thanks.
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
