Delivery-date: Mon, 07 Jun 2021 09:42:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9tj-0001Gd-TC
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 09:42:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9tg-0006Ir-Te
	for lore@pengutronix.de; Mon, 07 Jun 2021 09:42:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rltzbVVBrTvvPvCXd8YyPSy429sk5TkI14k6VKAD6pg=; b=3+EHXoccUNwA9ykdsx2o/6CYWf
	MP6it0pmzDIqykg/7dBaB55KA/+7isn1PdxeiR/su+KzbZLvynbw7VZRpY2VWxRagAwxin8bk5J4v
	8QsCUIVdX8HKHPulYgPpjBjuDP8L+a+OB7W7gRUn5mWzS3widv/+kGHBN659nPOy/XtMwcXhT6Gi7
	H8xSGQimzc49Qw9pve5ma72oR5W/Rk/RUj/Idf4qIkgFRT7wogxl/SQFwPOCFMeP5T5JSrgPezfPN
	S1pc42SamaSHXQeMAOTXJbHHZYh7gTQCMc/zfTpH38GN4oirUjak/T6ekDMbjKmBwUoaKhp0jKNfp
	AWdaNvpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq9sB-0026pV-F0; Mon, 07 Jun 2021 07:40:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq9s1-0026nY-2p
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 07:40:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lq9rz-0005yP-Ro; Mon, 07 Jun 2021 09:40:23 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-12-a.fatoum@pengutronix.de>
 <20210607073428.GE26174@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <38eb100f-1905-ea86-2a2d-630c589e5cc7@pengutronix.de>
Date: Mon, 7 Jun 2021 09:40:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210607073428.GE26174@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_004025_190734_83EDC024 
X-CRM114-Status: GOOD (  29.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/20] dma: support marking SRAM for coherent DMA use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 07.06.21 09:34, Sascha Hauer wrote:
> On Mon, May 31, 2021 at 09:38:12AM +0200, Ahmad Fatoum wrote:
>> The RISC-V architecture allows overriding the dma_alloc_coherent and
>> dma_free_coherent. Allow this to be controlled by device tree.
>>
>> Cache-coherent SoCs won't need this, but incoherent ones that have
>> uncached regions can register them here.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> +static void *pool_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>> +{
>> +	struct dma_coherent_pool *pool;
>> +	void *ret = NULL;
>> +
>> +	list_for_each_entry(pool, &pools, list) {
>> +		ret = tlsf_memalign(pool->handle, DMA_ALIGNMENT, size);
>> +		if (!ret)
>> +			continue;
>> +	}
>> +
>> +	BUG_ON(!ret);
> 
> Being out of memory is no bug, no?

It's for dma_alloc_coherent. Other archs use xmemalign and have no handling for
error cases.

> 
>> +
>> +	memset(ret, 0, size);
>> +
>> +	if (dma_handle)
>> +		*dma_handle = (dma_addr_t)ret;
>> +
>> +	pr_debug("alloc(%zu) == %p\n", size, ret);
>> +
>> +	return ret;
>> +}
>> +
>> +static void pool_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
>> +{
>> +	resource_size_t addr = (resource_size_t)vaddr;
>> +	struct dma_coherent_pool *pool;
>> +
>> +	list_for_each_entry(pool, &pools, list) {
>> +		if (pool->resource->start <= addr && addr <= pool->resource->end) {
> 
> Nice :)
> I would have written if (addr >= start && addr <= end), but the way you
> have written it makes it visually clear from the first sight that addr
> should be in that specific range.

Since I posted this series, someone nudged me into a better direction:
Set dma_addr to the cached alias address, which is < 32-bit and return
from alloc_coherent a > 32-bit address within the uncached alias.

As the devices aren't cache coherent, it doesn't matter that the alias they
get is the uncached one.

> 
>> +			tlsf_free(pool->handle, vaddr);
>> +			return;
>> +		}
>> +	}
>> +
>> +	pr_warn("freeing invalid region: %p\n", vaddr);
>> +}
>> +
>> +static const struct dma_coherent_ops pool_ops = {
>> +	.alloc = pool_alloc_coherent,
>> +	.free = pool_free_coherent,
>> +};
>> +
>> +static int compare_pool_sizes(struct list_head *_a, struct list_head *_b)
>> +{
>> +	struct dma_coherent_pool *a = list_entry(_a, struct dma_coherent_pool, list);
>> +	struct dma_coherent_pool *b = list_entry(_b, struct dma_coherent_pool, list);
>> +
>> +	if (resource_size(a->resource) > resource_size(b->resource))
>> +		return 1;
>> +	if (resource_size(a->resource) < resource_size(b->resource))
>> +		return -1;
>> +	return 0;
>> +}
>> +
>> +static int dma_declare_coherent_pool(const struct resource *res)
>> +{
>> +	struct dma_coherent_pool *pool;
>> +	tlsf_t handle;
>> +
>> +	handle = tlsf_create_with_pool((void *)res->start, resource_size(res));
>> +	if (!handle)
>> +		return -EINVAL;
>> +
>> +	pool = xmalloc(sizeof(*pool));
> 
> Better xzalloc()? It's too easy to add some element to a structure and
> assume that it's initialized.
> 
>> +	pool->handle = handle;
>> +	pool->resource = res;
>> +
>> +	list_add_sort(&pool->list, &pools, compare_pool_sizes);
> 
> The pools are sorted by their size, but is this a good criterion for the
> pools priority?

The idea was to have some fixed order, so issues are easier to debug.
With the changes described above, this commit can be replaced.
(The dma_set_ops one before will remain).

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

