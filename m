Delivery-date: Mon, 01 Dec 2025 12:00:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1eA-006nEI-0V
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 12:00:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1e9-0002N6-Hp
	for lore@pengutronix.de; Mon, 01 Dec 2025 12:00:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3K1UDgyrhQgg5O0WwzKn8XaZkqGVUqPFqflUH3ZRqW0=; b=VDIxrzMfsqxvv+qw0Eo2fnVaCj
	u4aplcaMnngKSPO24KbphzkzDQir95h5FBkFjlSvBZZggqDZwOy9ZWzAQXpisQTi83wYEksbvApZN
	RgbBsgnNrnoiblBOV06t2c1hMRNP7HHXyXaWLelnfZRMJ/zpvR9wJZM2116dkUF/GcsIIUe8/1gZp
	Fhyd7akeW5WdJQkYPH1jIDDBMB+sxxSqkO6kkTG13Oc2K1xMM12nV03sWgXp99vsvKTZT/1/2DD6D
	8JLoIrRU+TglXl41aMFY9zamoExfs46S0YF7bo63bQgzNWpkc4YEZ7LBct2g2ImgV/cgDk9J9chjo
	J5uSL4WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1dZ-00000003O6B-2Tih;
	Mon, 01 Dec 2025 11:00:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1dX-00000003O5g-2Gb2
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 11:00:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ1dV-00029i-Sh; Mon, 01 Dec 2025 12:00:05 +0100
Message-ID: <449caf8d-e9c4-4ff3-8a5a-eb747332fce5@pengutronix.de>
Date: Mon, 1 Dec 2025 12:00:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
 <20251201-imx_usb-v2-2-95ec2a0e8694@gocontroll.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251201-imx_usb-v2-2-95ec2a0e8694@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_030007_612691_BB09C659 
X-CRM114-Status: GOOD (  22.22  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] scripts: imx: add pread implementation for mingw
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 12/1/25 11:26 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> Add a simple pread implementation for the mingw target so imx-usb-loader
> can be compiled for windows.
> 
> This function is actually only called by bareboxtlv, which I don't think
> targets being compiled for windows, so it is a bit of a dead weight.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/imx/Makefile.mingw64 |  2 +-
>  scripts/imx/pread.c          | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
> index 101b39e917..a7be48ae53 100644
> --- a/scripts/imx/Makefile.mingw64
> +++ b/scripts/imx/Makefile.mingw64
> @@ -33,7 +33,7 @@ obj := $(realpath $(obj))
>  CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/ -include $(src)/../include/defines.h
>  LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
>  
> -OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
> +OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o pread.o)
>  
>  $(obj)/%.o: $(src)/%.c
>  	@$(CC) -c -o $@ $< $(CPPFLAGS)
> diff --git a/scripts/imx/pread.c b/scripts/imx/pread.c
> new file mode 100644
> index 0000000000..febb6f3243
> --- /dev/null
> +++ b/scripts/imx/pread.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2025 Maud Spierings, GOcontroll B.V.

Nitpick: A comment here why this is needed would've been nice, but it's
only a git blame away anyway.

> +
> +#include <stdint.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +ssize_t pread(int fd, void *buf, size_t count, off_t offset)
> +{
> +	int offset_start, now;
> +
> +	offset_start = lseek(fd, 0, SEEK_CUR);
> +	if (offset_start < 0)
> +		return offset_start;
> +
> +	now = lseek(fd, offset, SEEK_SET);
> +	if (now < 0)
> +		return now;
> +
> +	now = read(fd, buf, count);
> +
> +	lseek(fd, offset_start, SEEK_SET);
> +
> +	return now;
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



