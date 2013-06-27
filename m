Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Us6yX-0000x3-7c
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 07:50:42 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so135347bkc.2
 for <barebox@lists.infradead.org>; Thu, 27 Jun 2013 00:50:14 -0700 (PDT)
Message-ID: <51CBEEB2.5090209@gmail.com>
Date: Thu, 27 Jun 2013 09:50:10 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130627065118.GA10414@pengutronix.de>
In-Reply-To: <20130627065118.GA10414@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9] OF: address and device related sync and cleanup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/27/13 08:51, Sascha Hauer wrote:
> On Tue, Jun 25, 2013 at 11:20:38AM +0200, Sebastian Hesselbarth wrote:
>> This patch set comprises a quite unsorted bunch of patches to further
>> improve and cleanup OF API. With address and device related functions,
>> two more API sets of Linux OF API are imported and modified to match
>> barebox driver core.
>>
>> With above API improvements, device and resource pointer are removed
>> from struct device_node. Futher, of_translate_address, of_probe, and
>> of_add_memory are converted to recently introduced OF API.
>>
>> At last, of_free is renamed to of_delete_node, which gives a better
>> impression of what the function is doing.
>>
>> Sebastian Hesselbarth (9):
>>    OF: import address related functions from Linux OF API
>>    OF: convert of_translate_address to new API
>>    OF: base: move OF_ROOT_NODE_ defines to local OF code
>>    OF: import bus/device related functions from Linux OF API
>>    OF: base: use of_platform_populate for probing
>>    OF: base: remove dead device related functions
>>    OF: remove device and resource pointer from struct device_node
>>    OF: base: convert of_add_memory to OF API
>>    OF: base: rename of_free to of_delete_node
>
> Applied this series with the change that I removed the dead code
> ifdeffed with CONFIG_PPC_DCR.

Ok, great! Next patch sets will be focused on actually using the
DT improvements. I have an SPI driver for MACH_MVEBU ready and
running, and I am working on importing generic SDHCI from Linux.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
