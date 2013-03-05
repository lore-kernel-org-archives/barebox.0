Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f53.mail.ru ([94.100.178.229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCuAJ-0002Ii-Ap
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 15:52:32 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 05 Mar 2013 19:52:28 +0400
Message-ID: <1362498748.832582078@f53.mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?ZGVidWcgaW4gUEJM?=
To: barebox@lists.infradead.org

Hello All.

I tried to compile latest bb.
pcm038 + pbl + debug level 7

Compilation failed with following error:
  LD      arch/arm/pbl/zbarebox
arch/arm/mach-imx/built-in-pbl.o: In function `imx_nand_load_image':
/home/git/bb-mar05/arch/arm/mach-imx/external-nand-boot.c:232: undefined reference to `printf'

How we should handle debug messages in PBL in this case?
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
