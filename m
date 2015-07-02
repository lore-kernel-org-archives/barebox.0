Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAc24-0001Kn-Or
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 10:47:53 +0000
Received: by lbcpe5 with SMTP id pe5so29409549lbc.2
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2015 03:47:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <931117BB-24FC-4564-AD2F-B66FA129D3C1@jcrosoft.com>
References: <CABQt-U=gj3q-_ok0WW+C=NJfnJq0CQzvyEmud2exzFmQKS2Mdw@mail.gmail.com>
 <931117BB-24FC-4564-AD2F-B66FA129D3C1@jcrosoft.com>
Date: Thu, 2 Jul 2015 12:47:29 +0200
Message-ID: <CABQt-UkB_fvyNErv6ENGFD_b84n86zZ8rs1sUNdvvNG4Di5k6A@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: Re: how to do a digest on a flashed uImage ? uimage command evolution
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Well, I am using bootm to start my system: how do you boot your system
with a mounted uImage?

Best regards,


Philippe LEDUC
ledphilippe@gmail.com


2015-07-02 11:30 GMT+02:00 Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com>:
>
>> On Jul 2, 2015, at 4:53 PM, Philippe Leduc <ledphilippe@gmail.com> wrote:
>>
>> Hi,
>>
>> First thank you for the details answers :)
>>
>> Following your explanations/propositions, I think uimagefs is not
>> suited to my needs. I think therefore make an evolution of the uImage
>> command to be able to retrieve the size of my image and to copy it
>> efficiently into the RAM.
>>
>> I'll try to propose a patch next week for review. But before that,
>> what do you think about thes follwing interface:
>>
>> uimage - extract/verify/copy uImage
>>
>> Usage: uimage [-vienc] FILE
>>
>> Options:
>>        -i                      show information about image
>>        -v                     verify image
>>        -e OUTFILE      extract image to OUTFILE
>>        -n NO               use image number NO in multifile image
>>        -c OUTFILE      Copy the image to OUTFILE
>>        -s SIZE            Return the size of the uimage file into a VARiable.
>>
>
>
> I see no point to extract and copy as you you need to mount it
>
> and then use cp
>
> Best Regards,
> J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
