Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-f41.google.com ([209.85.213.41])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVbNs-0002ZC-Ve
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 09:57:59 +0000
Received: by mail-vk0-f41.google.com with SMTP id x75so87077612vke.2
 for <barebox@lists.infradead.org>; Mon, 23 Jan 2017 01:57:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAGm1_ksywG4OggUEhxr7vFV4TU0um4WfJ8TtXFWH2qEphhtdgA@mail.gmail.com>
References: <CAGm1_ksywG4OggUEhxr7vFV4TU0um4WfJ8TtXFWH2qEphhtdgA@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 23 Jan 2017 10:56:14 +0100
Message-ID: <CAGm1_kscoGkcA-e=THYu1gr-wSWKdYV96jqC9MYzoTOy5Y9MBA@mail.gmail.com>
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
Subject: Re: tftp get and last ack hanlding
To: barebox <barebox@lists.infradead.org>

On Mon, Jan 23, 2017 at 10:01 AM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> I'm using dnsmaq as tftp server. When I execute tftp file on barebox
> 2016.07.0 I get the required file, but dnsmasq complains about missing
> ACK (my interpretation of dnsmaq source code). If I'm performing the
> same operation in Linux using busybox ftfp - everything is OK, i.e.
> instead of "failed sending" I get "sent". Is this a desired barebox
> tftp behavior?
>
> dnsmasq log:
>
> Jan 23 08:30:25 buildroot daemon.err dnsmasq-tftp[225]: error 0
> received from 192.168.0.79
> Jan 23 08:30:25 buildroot daemon.info dnsmasq-tftp[225]: failed
> sending /data/tftp/vmlinuz.bin to 192.168.0.79
>
> Relevant dnsmaq code in [1], see how endcon is set:
>
>       if (difftime(now, transfer->timeout) >= 0.0)
>         {
>           int endcon = 0;
>
>           /* timeout, retransmit */
>           transfer->timeout += 1 + (1<<transfer->backoff);
>
>           /* we overwrote the buffer... */
>           daemon->srv_save = NULL;
>
>           if ((len = get_block(daemon->packet, transfer)) == -1)
>             {
>               len = tftp_err_oops(daemon->packet, transfer->file->filename);
>               endcon = 1;
>             }
>           /* don't complain about timeout when we're awaiting the last
>              ACK, some clients never send it */
>           else if (++transfer->backoff > 7 && len != 0)
>             {
>               endcon = 1;
>               len = 0;
>             }
>
>           if (len != 0)
>             while(sendto(transfer->sockfd, daemon->packet, len, 0,
>                          (struct sockaddr *)&transfer->peer,
> sa_len(&transfer->peer)) == -1 && errno == EINTR);
>
>           if (endcon || len == 0)
>             {
>               strcpy(daemon->namebuff, transfer->file->filename);
>               sanitise(daemon->namebuff);
>               my_syslog(MS_TFTP | LOG_INFO, endcon ? _("failed sending
> %s to %s") : _("sent %s to %s"), daemon->namebuff, daemon->addrbuff);
>               /* unlink */
>               *up = tmp;
>               if (endcon)
>                 free_transfer(transfer);
>               else
>                 {
>                   /* put on queue to be sent to script and deleted */
>                   transfer->next = daemon->tftp_done_trans;
>                   daemon->tftp_done_trans = transfer;
>                 }
>               continue;
>             }
>         }
>
> [1] http://thekelleys.org.uk/gitweb/?p=dnsmasq.git;a=blob;f=src/tftp.c;h=618c4062e07234336e09a6689a265763a4d7981c;hb=HEAD#l570

Perhaps it has something to do with our ar9331 network driver. Will
have to sniff, because at the end all files will be logged as "sent":

Jan 23 09:40:34 buildroot daemon.err dnsmasq-tftp[225]: error 0
received from 192.168.0.79
Jan 23 09:40:34 buildroot daemon.info dnsmasq-tftp[225]: failed
sending /data/tftp/barebox-production.bin to 192.168.0.79
Jan 23 09:40:34 buildroot daemon.err dnsmasq-tftp[225]: error 0
received from 192.168.0.79
Jan 23 09:40:34 buildroot daemon.info dnsmasq-tftp[225]: failed
sending /data/tftp/barebox-production.bin to 192.168.0.79
Jan 23 09:40:34 buildroot daemon.info dnsmasq-tftp[225]: sent
/data/tftp/barebox-production.bin to 192.168.0.79
Jan 23 09:40:38 buildroot daemon.err dnsmasq-tftp[225]: error 0
received from 192.168.0.79
Jan 23 09:40:38 buildroot daemon.info dnsmasq-tftp[225]: failed
sending /data/tftp/art.bin to 192.168.0.79
Jan 23 09:40:38 buildroot daemon.err dnsmasq-tftp[225]: error 0
received from 192.168.0.79
Jan 23 09:40:38 buildroot daemon.info dnsmasq-tftp[225]: failed
sending /data/tftp/art.bin to 192.168.0.79
Jan 23 09:40:38 buildroot daemon.info dnsmasq-tftp[225]: sent
/data/tftp/art.bin to 192.168.0.79
Jan 23 09:40:40 buildroot daemon.info dnsmasq-tftp[225]: sent
/data/tftp/data.bin to 192.168.0.79
Jan 23 09:40:40 buildroot daemon.info dnsmasq-tftp[225]: sent
/data/tftp/data.bin to 192.168.0.79
Jan 23 09:40:40 buildroot daemon.info dnsmasq-tftp[225]: sent
/data/tftp/data.bin to 192.168.0.79

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
