Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vqstq-0003kG-Dd
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 23:09:02 +0000
Received: by mail-bk0-f49.google.com with SMTP id my13so572727bkb.8
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 15:08:36 -0800 (PST)
Date: Thu, 12 Dec 2013 00:17:08 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131211231706.GA1017@x61s.Speedport_W_921V_1_24_000>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

I think I would speak for all "Is there any chance to show some code?"
Maybe just send it as "rfc".

On Wed, Dec 11, 2013 at 12:07:17PM -0500, Michael Burkey wrote:
> I figured I'd just throw this out to everyone..
> 
...
> 
> Are there any steps I'm missing or anything major I'm doing wrong? Do
> I need to be manually specifying a dtb file to include?
>
In my opinion (please correct me somebody if I am wrong) you need to
specify a dtb file in your config. Look for "BUILTIN_DTB_NAME".

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
