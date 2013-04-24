Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f59.mail.ru ([217.69.128.77])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUw9r-0004Nc-Td
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:38:38 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 24 Apr 2013 13:38:31 +0400
Message-ID: <1366796311.337567399@f59.mail.ru>
In-Reply-To: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
References: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxLzFdIG1jaTogYWRkIFNlY3VyZSBEaWdpdGFsIEhvc3Qg?=
 =?UTF-8?B?Q29udHJvbGxlciBJbnRlcmZhY2Ugc3VwcG9ydA==?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> as today more and more hw use it so import a sdhci implemetation based on
> linux.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/mci/Kconfig  |   12 +
>  drivers/mci/Makefile |    1 +
>  drivers/mci/sdhci.c  |  829 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/sdhci.h  |  358 ++++++++++++++++++++++
>  include/mci/sdhci.h  |  135 ++++++++
>  5 files changed, 1335 insertions(+)
>  create mode 100644 drivers/mci/sdhci.c
>  create mode 100644 drivers/mci/sdhci.h
>  create mode 100644 include/mci/sdhci.h
...
> +#ifdef CONFIG_MMC_SDHCI_IO_ACCESSORS

Where is this config option placed?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
