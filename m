Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0CK-0006np-IZ
 for barebox@lists.infradead.org; Thu, 03 Oct 2019 12:27:11 +0000
Received: from router.tkernel.org (unknown [59.35.36.150])
 by esmtp4.qq.com (ESMTP) with SMTP id 0
 for <barebox@lists.infradead.org>; Thu, 03 Oct 2019 20:26:25 +0800 (CST)
Date: Thu, 3 Oct 2019 20:26:25 +0800
From: duhuanpeng <iu87m888m@qq.com>
Message-ID: <20191003122624.GA12292@router.tkernel.org>+EEA430FBC845A34A
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: compile error report: CONFIG_CONSOLE_SIMPLE=y
To: barebox@lists.infradead.org

Hello, I cloned the lastest version(2019.10.3) of barebox,
compile error when set
  CONFIG_CONSOLE_SIMPLE=y

compile log:

(more logs...)
  ENVH    defaultenv/barebox_default_env.h
  CC      defaultenv/defaultenv.o
  ENV     defaultenv/defaultenv-2-base.bbenv
  ENV.S   defaultenv/defaultenv-2-base.bbenv.S
  AS      defaultenv/defaultenv-2-base.bbenv.o
  LD      defaultenv/built-in.o
  PBLLD   defaultenv/built-in-pbl.o
  ENVZ    defaultenv/barebox_zero_env
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  LD      common/built-in.o
  PBLCC   common/pbl-imd-barebox.o
  PBLLD   common/built-in-pbl.o
  LD      barebox
common/built-in.o: In function `run_init':
common/startup.c:(.text.run_init+0x210): undefined reference to `console_ctrlc_allow'
common/built-in.o: In function `run_shell':
(.text.run_shell+0x44): undefined reference to `ctrlc_handled'
Unable to open input file barebox
Makefile:783: recipe for target 'barebox' failed
make: *** [barebox] Error 2


:D, could any one please fix this error~~


Regards,
Du Huanpeng




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
