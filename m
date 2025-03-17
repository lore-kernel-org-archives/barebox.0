Delivery-date: Mon, 17 Mar 2025 12:34:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8k9-000b2n-0a
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 12:34:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8k8-0004Le-0o
	for lore@pengutronix.de; Mon, 17 Mar 2025 12:34:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WJKOUANSgLEGRptd+VqDUde150nrXh84xg3cHFs1Lv0=; b=zV7SaItNpsDXwScWCBQ/lUHjqo
	EtX77WLxqB/hVOczFNzrG/HCD2FSst3RzRKC+sVdZA1g5kKCjtfCBTp38YfLra+Zv/MNBhITmqKv6
	vBLmITBl82LFk6G0zJe9PVdUecE4o6finE8Ev5BWftrPdSHqCQExJTILIUz2WBUplfMpqnBdGsYkF
	X1EDp0jernuNVMsgAN/M28RF0cUbDrUy0UVYs7vB7Vgv9dXjN+rPZKosp79jKT01fMvVy0Rvyt3sd
	vAQZ1BaA7kNT0ZLx2cUVoj0YKXkBFhm0FQmRjseOhhMo06h3u+jvY44LJFJN8ZdyQzE92HwamqD9l
	m92QOCcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8jh-00000002Px6-3DLq;
	Mon, 17 Mar 2025 11:34:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8jf-00000002PwK-0qW1
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 11:34:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8jd-0004Bu-Uc; Mon, 17 Mar 2025 12:34:21 +0100
Message-ID: <66db8ce1-0791-43ed-8ef8-b28630c87500@pengutronix.de>
Date: Mon, 17 Mar 2025 12:34:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Adrian Negreanu <adrian.negreanu@nxp.com>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
 <20250313101728.3546902-6-a.fatoum@pengutronix.de>
 <Z9fbfE-1IZr44IUs@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <Z9fbfE-1IZr44IUs@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_043423_255765_590D3955 
X-CRM114-Status: GOOD (  15.48  )
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

Hello Sascha,

On 3/17/25 09:21, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Thu, Mar 13, 2025 at 11:17:22AM +0100, Ahmad Fatoum wrote:
>> +static int fw_cfg_fs_io(struct device *dev, struct file *f, void *buf,
>> +			 size_t insize, bool read)
>> +{
>> +	struct inode *inode = f->f_inode;
>> +	struct fw_cfg_fs_inode *node = inode_to_node(inode);
>> +	struct fw_cfg_fs_data *data = dev->priv;
>> +	int fd = data->fd;
>> +
>> +	if (node->buf) {
>> +		if (read)
>> +			memcpy(buf, node->buf + f->f_pos, insize);
>> +		else
>> +			memcpy(node->buf + f->f_pos, buf, insize);
>> +		return insize;
>> +	}
>> +
>> +	ioctl(fd, FW_CFG_SELECT, &(u16) { inode->i_ino });
>> +
>> +	if (read)
>> +		return pread(fd, buf, insize, f->f_pos);
>> +	else
>> +		return pwrite(fd, buf, insize, f->f_pos);
>> +}
>> +
>> +static int fw_cfg_fs_read(struct device *dev, struct file *f, void *buf,
>> +			   size_t insize)
>> +{
>> +	return fw_cfg_fs_io(dev, f, buf, insize, true);
>> +}
>> +
>> +static int fw_cfg_fs_write(struct device *dev, struct file *f, const void *buf,
>> +			    size_t insize)
>> +{
>> +	return fw_cfg_fs_io(dev, f, (void *)buf, insize, false);
>> +}
>> +
>> +static int fw_cfg_fw_truncate(struct device *dev, struct file *f, loff_t size)
>> +{
>> +	return 0;
>> +}
> 
> By returning 0 here you claim that the file can get an arbitrary size.
> 
> node->buf is a fixed size buffer. If I understand correctly then
> node->buf is only used for special files like "name", "raw".

Yes.

> However, writing to these files is not prohibited, consequently a
> cp /dev/ram0 /mnt/fw_cfg//by_key/37/key results in memory corrupions.

Ouch, I will revisit this.

> Writing data to a file I passed via --env truncates the file to the
> written data size, but the actual content of the file is unchanged. I
> still read back the original data. Is writing data supported?

I am not sure. I only wrote the special framebuffer file so far.
I will look into it.

Cheers,
Ahmad

> 
> Sascha
> 



