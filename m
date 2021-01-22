Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2t2o-0006sr-NU
 for barebox@lists.infradead.org; Fri, 22 Jan 2021 09:47:55 +0000
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-4-andrej.picej@norik.com>
 <20210121091128.GG19063@pengutronix.de>
 <435bb8a9-96b8-4a09-1a42-19cc77e42ebf@norik.com>
 <20210122081215.GM19063@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <65415553-750c-810d-7902-b1052d764bec@norik.com>
Date: Fri, 22 Jan 2021 10:47:09 +0100
MIME-Version: 1.0
In-Reply-To: <20210122081215.GM19063@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 3/3] ARM: i.MX: xload-gpmi-nand: apply errata 007117
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org



On 22. 01. 21 09:12, Sascha Hauer wrote:
> On Thu, Jan 21, 2021 at 01:23:16PM +0100, Andrej Picej wrote:
>> Hi Sascha,
>>
>> yes, unfortunately we have. We applied this just because we experienced
>> hangs in device booting tests. After this patch the NAND booting problems
>> went away. The booting failed during DMA page reading.
>> I just tested this again and after excluding the changes in this patch the
>> device fails at executing DMA commands. The boot fails in approximately one
>> out of 10 boots.
> 
> Where exactly did it hang? In the xloader or later in the real barebox
> driver?
> You probably mean that it hangs in the xloader. Sorry to ask, but I'm
> still trying to understand. That would mean the ROM leaves the GPMI in
> an unusable state and I really wonder how this can happen.
> 
> Sascha
> 

Sorry for not being clear enough the first time. You are correct, it 
hangs in xloader.

Maybe some additional information that may be relevant. When we boot 
barebox without PBL support barebox boots without problem and NAND 
behaves normal, so i guess the ROM sets the GPMI in usable state.
Just a thought: could it be that the problem is in xloader and we 
somehow repair or reset the GPMI with this errata fix, so it works with 
xloader?

Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
