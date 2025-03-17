Delivery-date: Mon, 17 Mar 2025 09:23:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5ks-000XUF-1m
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:23:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5kr-00022c-Cc
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:23:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oMzurowW6amsN+JhML432kpLZz6YfEUKpt4QCUfSzho=; b=ujzc70BE6TAOH3/vNrxzUeocrx
	xGq0+X9/940Ath5OJRf3BBBqmou/xvmx0Trik7jW1+DAwzMowsh6d3dK/OEJAttgtn88UC0MtXfLS
	zYTBhR/sxTjHRXRrUgGi0UWNKvCrYfvDENyCOvZ3yKuNI1tcP8mAnSPlRlGmRWSaHNK3ePU4uihKW
	cngcvsVo/TNWaLZmk4gDQjuB9CyFObwR/SClB75lOW53+1O89e3P1FEehDcCl6pyHZiPg1o/r1OoG
	9fbawbjoJYsNtMhCVIhamCympHc7WGaRAmWCcJbB/vC4PXVv0BogHCO51kBga8D/FnZU4ee8/SiJI
	WE9A7W0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5kL-00000001iUH-1DPf;
	Mon, 17 Mar 2025 08:22:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5io-00000001iDX-3xqR
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu5in-0001da-DS; Mon, 17 Mar 2025 09:21:17 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu5im-000DEo-2K;
	Mon, 17 Mar 2025 09:21:17 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu5in-00158M-02;
	Mon, 17 Mar 2025 09:21:17 +0100
Date: Mon, 17 Mar 2025 09:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Adrian Negreanu <adrian.negreanu@nxp.com>
Message-ID: <Z9fbfE-1IZr44IUs@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
 <20250313101728.3546902-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313101728.3546902-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_012118_986991_EB26796E 
X-CRM114-Status: GOOD (  18.27  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/11] fs: add qemu_fw_cfg file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Mar 13, 2025 at 11:17:22AM +0100, Ahmad Fatoum wrote:
> +static int fw_cfg_fs_io(struct device *dev, struct file *f, void *buf,
> +			 size_t insize, bool read)
> +{
> +	struct inode *inode = f->f_inode;
> +	struct fw_cfg_fs_inode *node = inode_to_node(inode);
> +	struct fw_cfg_fs_data *data = dev->priv;
> +	int fd = data->fd;
> +
> +	if (node->buf) {
> +		if (read)
> +			memcpy(buf, node->buf + f->f_pos, insize);
> +		else
> +			memcpy(node->buf + f->f_pos, buf, insize);
> +		return insize;
> +	}
> +
> +	ioctl(fd, FW_CFG_SELECT, &(u16) { inode->i_ino });
> +
> +	if (read)
> +		return pread(fd, buf, insize, f->f_pos);
> +	else
> +		return pwrite(fd, buf, insize, f->f_pos);
> +}
> +
> +static int fw_cfg_fs_read(struct device *dev, struct file *f, void *buf,
> +			   size_t insize)
> +{
> +	return fw_cfg_fs_io(dev, f, buf, insize, true);
> +}
> +
> +static int fw_cfg_fs_write(struct device *dev, struct file *f, const void *buf,
> +			    size_t insize)
> +{
> +	return fw_cfg_fs_io(dev, f, (void *)buf, insize, false);
> +}
> +
> +static int fw_cfg_fw_truncate(struct device *dev, struct file *f, loff_t size)
> +{
> +	return 0;
> +}

By returning 0 here you claim that the file can get an arbitrary size.

node->buf is a fixed size buffer. If I understand correctly then
node->buf is only used for special files like "name", "raw".

However, writing to these files is not prohibited, consequently a
cp /dev/ram0 /mnt/fw_cfg//by_key/37/key results in memory corrupions.

Writing data to a file I passed via --env truncates the file to the
written data size, but the actual content of the file is unchanged. I
still read back the original data. Is writing data supported?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


