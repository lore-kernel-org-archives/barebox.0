Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3VLA-00083O-Gr
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 16:28:21 +0000
Received: from corgarff.edi.geip.ge.com (corgarff.edi.geip.ge.com
 [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 8E264E054A
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 16:28:15 +0000 (GMT)
Message-ID: <4F50F51F.5000109@ge.com>
Date: Fri, 02 Mar 2012 16:28:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <4F4FD0EF.1000905@ge.com> <20120301200729.GE3852@pengutronix.de>
In-Reply-To: <20120301200729.GE3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting PPC Linux
To: barebox@lists.infradead.org



On 01/03/12 20:07, Sascha Hauer wrote:
> On Thu, Mar 01, 2012 at 07:41:35PM +0000, Renaud Barbier wrote:
>> I have a uImage + dtb that use to boot on a MPC8544-like system
>> a few months ago.
>>
>> After rebasing my code, it did not work.
>>
>> I notice that in arch/ppc/lib/ppclinux.c the kernel is now called
>> with the device tree as a parameter.
>>
>> After investigation, I copied the device tree to within 8MB of the
>> kernel entry point (0x0). It booted.
>>
>> Is the DTB relocation a missing step?
> Yes, it seems so. barebox holds the device tree in malloced space. This
> is likely outside 8MB of the kernel entry point. I was not aware of that
> restriction.
I think I found the limitation in Linux.

In arch/powerpc/mm/init_32.c:

/*
  * address of the limit of what is accessible with initial MMU setup -
  * 256MB usually, but only 16MB on 601.
  */
phys_addr_t __initial_memory_limit_addr = (phys_addr_t)0x10000000;


The book E specific code (arch/ppc/mm/fsl_booke_mmu.c) adjusts this variable
  to 256MB but the highest I was able to  put the DTB is below 64MB.
It may be limited by another function call.

The available memory may be limited to 8 or 16MB on other CPUs (601 and 
8xx).

Thanks.

>
> Sascha
>
>
>

-- 
Renaud Barbier
14, Links Place
3/2 great Michael House
Edinburgh, EH67EN
Tel: +44 131 561 3532
--------------------------------------------------------------------------------


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
