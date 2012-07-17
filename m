Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr7kV-00080e-4q
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 13:23:39 +0000
Message-ID: <5005674F.9030706@cmotion.eu>
Date: Tue, 17 Jul 2012 15:23:27 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <1342524182-15436-1-git-send-email-christian.kapeller@cmotion.eu>
 <20120717124925.GA22657@game.jcrosoft.org>
In-Reply-To: <20120717124925.GA22657@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: support booting of uimages with as barebox payload.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 07/17/2012 02:49 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:23 Tue 17 Jul     , Christian Kapeller wrote:
>> Packing barebox within an uimage gives us integrity checking.
>>
>> Generate the image with:
>> ./scripts/mkimage -A arm -O barebox -T firmware -C none -d barebox.bin -a 0xffffffff barebox.uimage
>>
>> Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
>> ---
> boot it as a linux kernel
> 
> it will work

You are right, it does. But then, I am asking myself, why is there a OS
definition for 'barebox', when we aren't using it in the first place?

Regards,
Christian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
