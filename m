Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x231.google.com ([2607:f8b0:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aY9e8-0003n2-Fp
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 09:52:45 +0000
Received: by mail-vk0-x231.google.com with SMTP id e6so155975219vkh.2
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2016 01:52:22 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 23 Feb 2016 10:52:21 +0100
Message-ID: <CAFfN3gVQe42ymDjXDZntq_cR0mms9W2MPin0G7_-QWwgUJag5g@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: bootm: booting of uncompressed uimages broken
To: barebox@lists.infradead.org

Hi,

booting of uncompressed uimages is broken since patch "ARM: bootm: fix
default uImage placement" (0839e3f402ffc74202a1ca4fbeaffcadb4336ce1):

This is the change causing the issue:
@@ -138,13 +144,10 @@ static int do_bootm_linux(struct image_data *data)
  return ret;

  /*
- * Put devicetree/initrd at maximum to 128MiB into RAM to not
- * risk to put it outside of lowmem.
+ * put oftree/initrd close behind compressed kernel image to avoid
+ * placing it outside of the kernels lowmem.
  */
- if (mem_size > SZ_256M)
- mem_free = mem_start + SZ_128M;
- else
- mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+ mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);

  return __do_bootm_linux(data, mem_free, 0);
 }

System Info: iMX6S; 512MB RAM; LoadAddress 0x10008000; Barebox v2015.06.0

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
