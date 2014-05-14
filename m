Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x232.google.com ([2607:f8b0:400c:c01::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkYN0-0002fO-Bx
 for barebox@lists.infradead.org; Wed, 14 May 2014 12:33:14 +0000
Received: by mail-ve0-f178.google.com with SMTP id sa20so2257561veb.23
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 05:32:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140514093212.ad026f36df7b0e4edaa54ba6@gmail.com>
References: <CAOMZO5CMuVwZGB4DoZchuE7DCJU4=fMHZQugBzm3mPsQsqEamw@mail.gmail.com>
 <56785357-39FF-4F83-B1B3-F20C1D921A25@gmail.com>
 <20140514093212.ad026f36df7b0e4edaa54ba6@gmail.com>
Date: Wed, 14 May 2014 09:32:52 -0300
Message-ID: <CAOMZO5BWKDxZvF1xFaLj8XTrZQyOpQwuS_tp-ejz1GOsGvXsCA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: Changing the baudrate via barebox prompt
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, May 14, 2014 at 2:32 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Wed, 14 May 2014 12:59:53 +0800
> Kevin Du Huanpeng <u74147@gmail.com> wrote:
>
>> yes,try
>> console.baundrate=9600
>> but you may have to check if your serial driver has support this
>
> cs0.baudrate=9600
>
> use devinfo to see all available consoles (cs0, cs1 etc).

Thanks for your suggestion, Antony!

It works fine now.

Regards,

Fabio Estevam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
