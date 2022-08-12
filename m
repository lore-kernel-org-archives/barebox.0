Delivery-date: Fri, 12 Aug 2022 18:19:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMXNp-002wEr-9B
	for lore@lore.pengutronix.de; Fri, 12 Aug 2022 18:19:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMXNo-0005ea-1C
	for lore@pengutronix.de; Fri, 12 Aug 2022 18:19:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KIF+SgmNFcm4/BKMuYJlGYBa3Nv20Dnotcrc/xISN0I=; b=oplhqHt8pof9WwPv5SXrU0zLW/
	B9CZK21BC/3ObD+bMYtmG6g+IWpdqDDNVL7zOvZcitafL7b6CvEikQjdgNtdmyadZtpbPE08S6fIg
	kbqBsni5bg4aZpCXh4yeHPBmrD5ES+C8idmiloJ6o7GDJYHSpxZRU35IOqSy25Gkyot/DHd4FK7/T
	AB3j80pFT2BEY/Mcos9JEp34ay5fYCH5IjenR2DI/lgObJaQDUdR3ACzBoVjbvHpwouKPJDdPgr3C
	dj9L8zOsf0v2Pb+IXJCNudfLKPjMvt0vrkHy4N5vU/1awr1acBmGdh/VXVE/lGqSHhP72EuNbPbqL
	htT0yIDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMXLp-00Alfp-Ou; Fri, 12 Aug 2022 16:17:33 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMXLi-00Alac-3Z
	for barebox@lists.infradead.org; Fri, 12 Aug 2022 16:17:29 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id A543A3ACBDC
	for <barebox@lists.infradead.org>; Fri, 12 Aug 2022 18:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1660321041;
	bh=I+zWr+6B+6HrD5B6HgBZy7p50hkGFt/kgnKCBSPD9LM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RO6wMMN14BEG5iepl5n5S7RRowjK7+njS2x7hQkY0W4hcRb0uVt68PFmHGCvhol7z
	 7Sef118wHuDb62GAb2i0CaV/HzGA+OF6XJEhYM3NrhVbViqQmltRUkM+1j3JAWmNXS
	 Wj/2tunhN46cRU8WC6WSbrtBQClVOxAAxM3/vj3A=
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id 15B3B3ACBBC; Fri, 12 Aug 2022 18:17:21 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 05A923ACB8A; Fri, 12 Aug
 2022 18:17:20 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id D942D27E053F; Fri, 12 Aug 2022
 18:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id C086127E0544; Fri, 12 Aug 2022 18:17:19 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 NcryMzbQyszE; Fri, 12 Aug 2022 18:17:19 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id AB79F27E053F; Fri, 12 Aug 2022
 18:17:19 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <1669c.62f67d10.29f3.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C086127E0544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1660321039;
 bh=KIF+SgmNFcm4/BKMuYJlGYBa3Nv20Dnotcrc/xISN0I=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=e5mbv93J1J1QVVyccp53hZ75BP3ZybxRhN2f3Xyzyb18fnBFZ0IUFwv6cl/6aw+o7
 w2SW1qL2JVlI32HCDaMDa9suvSiVVHDDx60DsBwVGDU9CUrlZ6sScrD89oR9WFfh/j
 b0XPg6kyOga653vNykXvvuYHDbXhoXFzEtlMoLIw=
Date: Fri, 12 Aug 2022 18:17:18 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220812161718.GC29425@tellis.lin.mbt.kalray.eu>
References: <20220809132021.7110-1-jmaselbas@kalray.eu>
 <20220809132021.7110-3-jmaselbas@kalray.eu>
 <20220812070448.GA31528@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220812070448.GA31528@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_091726_507374_B3F2A5C1 
X-CRM114-Status: GOOD (  37.96  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 3/5] net: Add simple TCP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Fri, Aug 12, 2022 at 09:04:48AM +0200, Sascha Hauer wrote:
> Hi Jules,
> 
> On Tue, Aug 09, 2022 at 03:20:19PM +0200, Jules Maselbas wrote:
> > This is a very simple TCP implementation that only support connecting
> > to servers (passive open and listen are not supported).
> > 
> > This also doesn't handle multiples segments and the TCP window size is
> > smaller than the MTU, this will hopefully make the sender only send one
> > segment at a time.
> 
> I am impressed how simple TCP support can be. I never even considered
> trying to write TCP support from scratch.
> My plan for TCP support was always to integrate some existing stack like
> lwip into barebox to get a stack that has proven to work elsewhere. Also
> IPv6 support is still a pending feature which is becoming more and more
> interesting and we would get that for free with integrating an existing
> IP stack.
> Given that I am sceptical if we really want to follow the approach of
> developping TCP from scratch.
Yes... I agree that integrating a "proven" and field-tested TCP
implementation (including IPv6) is the saner solution, over rolling out
a custom implementation.

This is more a PoC and it was an excuse to take a deeper look at how TCP
works and what it requires.

> Nevertheless it's really cool to see how simple it could be ;) Nice
> stuff!
:)

> Sascha
> 
> 
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  common/misc.c |  12 +-
> >  include/net.h | 118 +++++++++++++++
> >  net/net.c     | 406 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 531 insertions(+), 5 deletions(-)
> > 
> > diff --git a/common/misc.c b/common/misc.c
> > index 0f6de3e9e5..30e94f5a8b 100644
> > --- a/common/misc.c
> > +++ b/common/misc.c
> > @@ -57,6 +57,13 @@ const char *strerror(int errnum)
> >  	case	EPROBE_DEFER	: str = "Requested probe deferral"; break;
> >  	case	ELOOP		: str = "Too many symbolic links encountered"; break;
> >  	case	ENODATA		: str = "No data available"; break;
> > +#ifdef CONFIG_NET
> > +	case	ENETRESET	: str = "Network dropped connection because of reset"; break;
> > +	case	ECONNABORTED	: str = "Software caused connection abort"; break;
> > +	case	ECONNRESET	: str = "Connection reset by peer"; break;
> > +	case	ENOBUFS		: str = "No buffer space available"; break;
> > +	case	ECONNREFUSED	: str = "Connection refused"; break;
> > +#endif
> >  #if 0 /* These are probably not needed */
> >  	case	ENOTBLK		: str = "Block device required"; break;
> >  	case	EFBIG		: str = "File too large"; break;
> > @@ -79,11 +86,6 @@ const char *strerror(int errnum)
> >  	case	EAFNOSUPPORT	: str = "Address family not supported by protocol"; break;
> >  	case	EADDRINUSE	: str = "Address already in use"; break;
> >  	case	EADDRNOTAVAIL	: str = "Cannot assign requested address"; break;
> > -	case	ENETRESET	: str = "Network dropped connection because of reset"; break;
> > -	case	ECONNABORTED	: str = "Software caused connection abort"; break;
> > -	case	ECONNRESET	: str = "Connection reset by peer"; break;
> > -	case	ENOBUFS		: str = "No buffer space available"; break;
> > -	case	ECONNREFUSED	: str = "Connection refused"; break;
> >  	case	EHOSTDOWN	: str = "Host is down"; break;
> >  	case	EALREADY	: str = "Operation already in progress"; break;
> >  	case	EINPROGRESS	: str = "Operation now in progress"; break;
> > diff --git a/include/net.h b/include/net.h
> > index b50b6e76c8..76b64ccb21 100644
> > --- a/include/net.h
> > +++ b/include/net.h
> > @@ -143,6 +143,7 @@ struct ethernet {
> >  #define PROT_VLAN	0x8100		/* IEEE 802.1q protocol		*/
> >  
> >  #define IPPROTO_ICMP	 1	/* Internet Control Message Protocol	*/
> > +#define IPPROTO_TCP	 6	/* Transmission Control Protocol	*/
> >  #define IPPROTO_UDP	17	/* User Datagram Protocol		*/
> >  
> >  #define IP_BROADCAST    0xffffffff /* Broadcast IP aka 255.255.255.255 */
> > @@ -171,6 +172,67 @@ struct udphdr {
> >  	uint16_t	uh_sum;		/* udp checksum */
> >  } __attribute__ ((packed));
> >  
> > +/* pseudo header for checksum */
> > +struct psdhdr {
> > +	uint32_t	saddr;
> > +	uint32_t	daddr;
> > +	uint16_t	proto;
> > +	uint16_t	ttlen;
> > +} __attribute__ ((packed));
> > +
> > +struct tcphdr {
> > +	uint16_t	src;	/* source port */
> > +	uint16_t	dst;	/* destination port */
> > +	uint32_t	seq;	/* sequence number */
> > +	uint32_t	ack;	/* acknowledge number */
> > +	uint16_t 	doff_flag;	/* data offset and flags */
> > +#define TCP_DOFF_MASK	0xf
> > +#define TCP_DOFF_SHIFT	12
> > +#define TCP_FLAG_FIN	BIT(0)
> > +#define TCP_FLAG_SYN	BIT(1)
> > +#define TCP_FLAG_RST	BIT(2)
> > +#define TCP_FLAG_PSH	BIT(3)
> > +#define TCP_FLAG_ACK	BIT(4)
> > +#define TCP_FLAG_URG	BIT(5)
> > +#define TCP_FLAG_ECE	BIT(6)
> > +#define TCP_FLAG_CWR	BIT(7)
> > +#define TCP_FLAG_NS	BIT(8)
> > +#define TCP_FLAG_MASK	0x1ff
> > +	uint16_t	wnd;	/* window size */
> > +	uint16_t	sum;	/* header and data checksum */
> > +	uint16_t	urp;	/* urgent pointer (if URG is set) */
> > +	/* The options start here. */
> > +} __attribute__ ((packed));
> > +
> > +enum tcp_state {
> > +	TCP_CLOSED = 0,
> > +	TCP_LISTEN,
> > +	TCP_SYN_SENT,
> > +	TCP_SYN_RECV,
> > +	TCP_ESTABLISHED,
> > +	TCP_FIN_WAIT1,
> > +	TCP_FIN_WAIT2,
> > +	TCP_TIME_WAIT,
> > +	TCP_CLOSE_WAIT,
> > +	TCP_LAST_ACK,
> > +	TCP_CLOSING,
> > +};
> > +
> > +/* Transmission Control Block */
> > +struct tcb {
> > +	uint32_t snd_una;
> > +	uint32_t snd_nxt;
> > +	uint32_t snd_wnd;
> > +	uint16_t snd_urp;
> > +	uint32_t snd_wl1;
> > +	uint32_t snd_wl2;
> > +	uint32_t rcv_nxt;
> > +	uint32_t rcv_wnd;
> > +	uint16_t rcv_urp;
> > +	uint32_t iss;
> > +	uint32_t irs;
> > +};
> > +
> >  /*
> >   *	Address Resolution Protocol (ARP) header.
> >   */
> > @@ -264,6 +326,13 @@ struct eth_device *net_route(IPaddr_t ip);
> >  /* Do the work */
> >  void net_poll(void);
> >  
> > +static inline size_t net_tcp_data_offset(struct tcphdr *tcp)
> > +{
> > +	uint16_t doff;
> > +	doff = ntohs(tcp->doff_flag) >> TCP_DOFF_SHIFT;
> > +	return doff * sizeof(uint32_t);
> > +}
> > +
> >  static inline struct iphdr *net_eth_to_iphdr(char *pkt)
> >  {
> >  	return (struct iphdr *)(pkt + ETHER_HDR_SIZE);
> > @@ -274,6 +343,11 @@ static inline struct udphdr *net_eth_to_udphdr(char *pkt)
> >  	return (struct udphdr *)(net_eth_to_iphdr(pkt) + 1);
> >  }
> >  
> > +static inline struct tcphdr *net_eth_to_tcphdr(char *pkt)
> > +{
> > +	return (struct tcphdr *)(net_eth_to_iphdr(pkt) + 1);
> > +}
> > +
> >  static inline struct icmphdr *net_eth_to_icmphdr(char *pkt)
> >  {
> >  	return (struct icmphdr *)(net_eth_to_iphdr(pkt) + 1);
> > @@ -295,8 +369,28 @@ static inline int net_eth_to_udplen(char *pkt)
> >  	return ntohs(udp->uh_ulen) - 8;
> >  }
> >  
> > +static inline char *net_eth_to_tcp_payload(char *pkt)
> > +{
> > +	struct tcphdr *tcp = net_eth_to_tcphdr(pkt);
> > +	return ((char *)tcp) + net_tcp_data_offset(tcp);
> > +}
> > +
> > +static inline int net_eth_to_iplen(char *pkt)
> > +{
> > +	struct iphdr *ip = net_eth_to_iphdr(pkt);
> > +	return ntohs(ip->tot_len) - sizeof(struct iphdr);
> > +}
> > +
> > +static inline int net_eth_to_tcplen(char *pkt)
> > +{
> > +	struct tcphdr *tcp = net_eth_to_tcphdr(pkt);
> > +	return net_eth_to_iplen(pkt) - net_tcp_data_offset(tcp);
> > +}
> > +
> >  int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
> >  uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
> > +int tcp_checksum_ok(struct iphdr *ip, struct tcphdr *tcp, int len);
> > +uint16_t tcp_checksum(struct iphdr *ip, struct tcphdr *tcp, int len);
> >  
> >  /*
> >   * The following functions are a bit ugly, but necessary to deal with
> > @@ -459,12 +553,18 @@ struct net_connection {
> >  	struct ethernet *et;
> >  	struct iphdr *ip;
> >  	struct udphdr *udp;
> > +	struct tcphdr *tcp;
> >  	struct eth_device *edev;
> >  	struct icmphdr *icmp;
> >  	unsigned char *packet;
> >  	struct list_head list;
> >  	rx_handler_f *handler;
> >  	int proto;
> > +	int state;
> > +	int ret;
> > +	union {
> > +		struct tcb tcb;
> > +	};
> >  	void *priv;
> >  };
> >  
> > @@ -480,6 +580,13 @@ struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
> >                                         uint16_t dport, rx_handler_f *handler,
> >                                         void *ctx);
> >  
> > +struct net_connection *net_tcp_new(IPaddr_t dest, uint16_t dport,
> > +		rx_handler_f *handler, void *ctx);
> > +
> > +struct net_connection *net_tcp_eth_new(struct eth_device *edev, IPaddr_t dest,
> > +                                       uint16_t dport, rx_handler_f *handler,
> > +                                       void *ctx);
> > +
> >  struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
> >  		void *ctx);
> >  
> > @@ -497,6 +604,17 @@ static inline void *net_udp_get_payload(struct net_connection *con)
> >  		sizeof(struct udphdr);
> >  }
> >  
> > +static inline void *net_tcp_get_payload(struct net_connection *con)
> > +{
> > +	return con->packet + sizeof(struct ethernet) + sizeof(struct iphdr) +
> > +		net_tcp_data_offset(con->tcp);
> > +}
> > +
> > +int net_tcp_listen(struct net_connection *con);
> > +int net_tcp_open(struct net_connection *con);
> > +int net_tcp_send(struct net_connection *con, int len);
> > +int net_tcp_close(struct net_connection *con);
> > +
> >  int net_udp_send(struct net_connection *con, int len);
> >  int net_icmp_send(struct net_connection *con, int len);
> >  
> > diff --git a/net/net.c b/net/net.c
> > index 9f799f252d..855bb8e4c2 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -47,6 +47,8 @@ static struct net_connection *net_ip_get_con(int proto, uint16_t port)
> >  			continue;
> >  		if (con->proto == IPPROTO_UDP && ntohs(con->udp->uh_sport) == port)
> >  			return con;
> > +		if (con->proto == IPPROTO_TCP && ntohs(con->tcp->src) == port)
> > +			return con;
> >  	}
> >  
> >  	return NULL;
> > @@ -99,6 +101,31 @@ uint16_t net_checksum(unsigned char *ptr, int len)
> >  	return xsum & 0xffff;
> >  }
> >  
> > +uint16_t tcp_checksum(struct iphdr *ip, struct tcphdr *tcp, int len)
> > +{
> > +	uint32_t xsum;
> > +	struct psdhdr pseudo;
> > +	size_t hdrsize = net_tcp_data_offset(tcp);
> > +
> > +	pseudo.saddr = ip->saddr;
> > +	pseudo.daddr = ip->daddr;
> > +	pseudo.proto = htons(ip->protocol);
> > +	pseudo.ttlen = htons(hdrsize + len);
> > +
> > +	xsum = net_checksum((void *)&pseudo, sizeof(struct psdhdr));
> > +	xsum += net_checksum((void *)tcp, hdrsize + len);
> > +
> > +	while (xsum > 0xffff)
> > +		xsum = (xsum & 0xffff) + (xsum >> 16);
> > +
> > +	return xsum;
> > +}
> > +
> > +int tcp_checksum_ok(struct iphdr *ip, struct tcphdr *tcp, int len)
> > +{
> > +	return tcp_checksum(ip, tcp, len) == 0xffff;
> > +}
> > +
> >  IPaddr_t getenv_ip(const char *name)
> >  {
> >  	IPaddr_t ip;
> > @@ -335,6 +362,11 @@ static uint16_t net_udp_new_localport(void)
> >  	return net_new_localport(IPPROTO_UDP);
> >  }
> >  
> > +static uint16_t net_tcp_new_localport(void)
> > +{
> > +	return net_new_localport(IPPROTO_TCP);
> > +}
> > +
> >  IPaddr_t net_get_serverip(void)
> >  {
> >  	IPaddr_t ip;
> > @@ -422,6 +454,7 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
> >  	con->et = (struct ethernet *)con->packet;
> >  	con->ip = (struct iphdr *)(con->packet + ETHER_HDR_SIZE);
> >  	con->udp = (struct udphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
> > +	con->tcp = (struct tcphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
> >  	con->icmp = (struct icmphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
> >  	con->handler = handler;
> >  
> > @@ -452,6 +485,30 @@ out:
> >  	return ERR_PTR(ret);
> >  }
> >  
> > +struct net_connection *net_tcp_eth_new(struct eth_device *edev, IPaddr_t dest,
> > +				       uint16_t dport, rx_handler_f *handler,
> > +				       void *ctx)
> > +{
> > +	struct net_connection *con = net_new(edev, dest, handler, ctx);
> > +	uint16_t doff;
> > +
> > +	if (IS_ERR(con))
> > +		return con;
> > +
> > +	con->proto = IPPROTO_TCP;
> > +	con->state = TCP_CLOSED;
> > +	con->tcp->src = htons(net_tcp_new_localport());
> > +	con->tcp->dst = htons(dport);
> > +	con->tcp->seq = 0;
> > +	con->tcp->ack = 0;
> > +	doff = sizeof(struct tcphdr) / sizeof(uint32_t);
> > +	con->tcp->doff_flag = htons(doff << TCP_DOFF_SHIFT);
> > +	con->tcp->urp = 0;
> > +	con->ip->protocol = IPPROTO_TCP;
> > +
> > +	return con;
> > +}
> > +
> >  struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
> >  				       uint16_t dport, rx_handler_f *handler,
> >  				       void *ctx)
> > @@ -475,6 +532,12 @@ struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
> >  	return net_udp_eth_new(NULL, dest, dport, handler, ctx);
> >  }
> >  
> > +struct net_connection *net_tcp_new(IPaddr_t dest, uint16_t dport,
> > +		rx_handler_f *handler, void *ctx)
> > +{
> > +	return net_tcp_eth_new(NULL, dest, dport, handler, ctx);
> > +}
> > +
> >  struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
> >  		void *ctx)
> >  {
> > @@ -514,6 +577,167 @@ int net_udp_send(struct net_connection *con, int len)
> >  	return net_ip_send(con, sizeof(struct udphdr) + len);
> >  }
> >  
> > +static int tcp_send(struct net_connection *con, int len, uint16_t flags)
> > +{
> > +	size_t hdr_size = net_tcp_data_offset(con->tcp);
> > +
> > +	con->tcp->doff_flag &= ~htons(TCP_FLAG_MASK);
> > +	con->tcp->doff_flag |= htons(flags);
> > +	con->tcp->sum = 0;
> > +	con->tcp->sum = ~tcp_checksum(con->ip, con->tcp, len);
> > +
> > +	return net_ip_send(con, hdr_size + len);
> > +}
> > +
> > +int net_tcp_send(struct net_connection *con, int len)
> > +{
> > +	struct tcb *tcb = &con->tcb;
> > +	uint16_t flag = 0;
> > +
> > +	if (con->proto != IPPROTO_TCP)
> > +		return -EPROTOTYPE;
> > +	switch (con->state) {
> > +	case TCP_CLOSED:
> > +		return -ENOTCONN;
> > +	case TCP_LISTEN:
> > +		/* TODO: proceed as open */
> > +		break;
> > +	case TCP_SYN_SENT:
> > +	case TCP_SYN_RECV:
> > +		/* queue request or "error:  insufficient resources". */
> > +		break;
> > +	case TCP_ESTABLISHED:
> > +	case TCP_CLOSE_WAIT:
> > +		/* proceed */
> > +		break;
> > +	case TCP_FIN_WAIT1:
> > +	case TCP_FIN_WAIT2:
> > +	case TCP_TIME_WAIT:
> > +	case TCP_LAST_ACK:
> > +	case TCP_CLOSING:
> > +		return -ESHUTDOWN;
> > +	}
> > +
> > +	con->tcp->seq = htonl(tcb->snd_nxt);
> > +	tcb->snd_nxt += len;
> > +	flag |= TCP_FLAG_PSH;
> > +	if (1 || ntohl(con->tcp->ack) < con->tcb.rcv_nxt) {
> > +		flag |= TCP_FLAG_ACK;
> > +		con->tcp->ack = htonl(con->tcb.rcv_nxt);
> > +	} else {
> > +		con->tcp->ack = 0;
> > +	}
> > +
> > +	return tcp_send(con, len, flag);
> > +}
> > +
> > +int net_tcp_listen(struct net_connection *con)
> > +{
> > +	if (con->proto != IPPROTO_TCP)
> > +		return -EPROTOTYPE;
> > +
> > +	con->state = TCP_LISTEN;
> > +	return -1;
> > +}
> > +
> > +int net_tcp_open(struct net_connection *con)
> > +{
> > +	struct tcphdr *tcp = net_eth_to_tcphdr(con->packet);
> > +	struct tcb *tcb = &con->tcb;
> > +	int ret;
> > +
> > +	if (con->proto != IPPROTO_TCP)
> > +		return -EPROTOTYPE;
> > +	switch (con->state) {
> > +	case TCP_CLOSED:
> > +	case TCP_LISTEN:
> > +		break;
> > +	case TCP_SYN_SENT:
> > +	case TCP_SYN_RECV:
> > +	case TCP_ESTABLISHED:
> > +	case TCP_FIN_WAIT1:
> > +	case TCP_FIN_WAIT2:
> > +	case TCP_TIME_WAIT:
> > +	case TCP_CLOSE_WAIT:
> > +	case TCP_LAST_ACK:
> > +	case TCP_CLOSING:
> > +		return -EISCONN;
> > +	}
> > +
> > +	/* use a window smaller than the MTU, as only one tcp segment packet
> > +	 * can be received at time */
> > +	tcb->rcv_wnd = 1024;
> > +	tcb->snd_wnd = 0;
> > +	tcb->iss = random32() + (get_time_ns() >> 10);
> > +	con->state = TCP_SYN_SENT;
> > +
> > +	tcp->wnd = htons(tcb->rcv_wnd);
> > +	tcp->seq = htonl(tcb->iss);
> > +	tcb->snd_una = tcb->iss;
> > +	tcb->snd_nxt = tcb->iss + 1;
> > +	ret = tcp_send(con, 0, TCP_FLAG_SYN);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = wait_on_timeout(6000 * MSECOND, con->state == TCP_ESTABLISHED);
> > +	if (ret)
> > +		return -ETIMEDOUT;
> > +
> > +	return con->ret; // TODO: return 0 ?
> > +}
> > +
> > +int net_tcp_close(struct net_connection *con)
> > +{
> > +	struct tcphdr *tcp = net_eth_to_tcphdr(con->packet);
> > +	struct tcb *tcb = &con->tcb;
> > +	int ret;
> > +
> > +	if (con->proto != IPPROTO_TCP)
> > +		return -EPROTOTYPE;
> > +	switch (con->state) {
> > +	case TCP_CLOSED:
> > +		return -ENOTCONN;
> > +	case TCP_LISTEN:
> > +	case TCP_SYN_SENT:
> > +		con->state = TCP_CLOSED;
> > +		return 0;
> > +		break;
> > +	case TCP_SYN_RECV:
> > +	case TCP_ESTABLISHED:
> > +		/* wait for pending send */
> > +		con->state = TCP_FIN_WAIT1;
> > +		break;
> > +	case TCP_FIN_WAIT1:
> > +	case TCP_FIN_WAIT2:
> > +		/* error: connection closing */
> > +		return -1;
> > +	case TCP_TIME_WAIT:
> > +	case TCP_LAST_ACK:
> > +	case TCP_CLOSING:
> > +		/* error: connection closing */
> > +		return -1;
> > +	case TCP_CLOSE_WAIT:
> > +		/* queue close request after pending sends */
> > +		con->state = TCP_LAST_ACK;
> > +		break;
> > +	}
> > +
> > +	tcp->seq = htonl(tcb->snd_nxt);
> > +	tcp->ack = htonl(tcb->rcv_nxt);
> > +	tcb->snd_nxt += 1;
> > +	ret = tcp_send(con, 0, TCP_FLAG_FIN | TCP_FLAG_ACK);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = wait_on_timeout(1000 * MSECOND, con->state == TCP_CLOSED);
> > +	if (ret)
> > +		return -ETIMEDOUT;
> > +
> > +	net_unregister(con);
> > +
> > +	return con->ret; // TODO: return 0 ?
> > +}
> > +
> >  int net_icmp_send(struct net_connection *con, int len)
> >  {
> >  	con->icmp->checksum = ~net_checksum((unsigned char *)con->icmp,
> > @@ -624,6 +848,186 @@ static int net_handle_udp(unsigned char *pkt, int len)
> >  	return -EINVAL;
> >  }
> >  
> > +static int net_handle_tcp(unsigned char *pkt, int len)
> > +{
> > +	size_t min_size = ETHER_HDR_SIZE + sizeof(struct iphdr);
> > +	struct net_connection *con;
> > +	struct iphdr *ip = net_eth_to_iphdr(pkt);
> > +	struct tcphdr *tcp = net_eth_to_tcphdr(pkt);
> > +	struct tcb *tcb;
> > +	uint16_t flag;
> > +	uint16_t doff;
> > +	uint32_t tcp_len;
> > +	uint32_t seg_len;
> > +	uint32_t seg_ack;
> > +	uint32_t seg_seq;
> > +	uint32_t seg_last;
> > +	uint32_t rcv_wnd;
> > +	uint32_t rcv_nxt;
> > +	int seg_accept = 0;
> > +
> > +	if (len < (min_size + sizeof(struct tcphdr)))
> > +		goto bad;
> > +	flag = ntohs(tcp->doff_flag) & TCP_FLAG_MASK;
> > +	doff = net_tcp_data_offset(tcp);
> > +	if (doff < sizeof(struct tcphdr))
> > +		goto bad;
> > +	if (len < (min_size + doff))
> > +		goto bad;
> > +
> > +	seg_ack = ntohl(tcp->ack);
> > +	seg_seq = ntohl(tcp->seq);
> > +	tcp_len = net_eth_to_tcplen(pkt);
> > +	seg_len = tcp_len;
> > +	seg_len += !!(flag & TCP_FLAG_FIN);
> > +	seg_len += !!(flag & TCP_FLAG_SYN);
> > +
> > +	if (!tcp_checksum_ok(ip, tcp, tcp_len))
> > +		goto bad;
> > +
> > +	con = net_ip_get_con(IPPROTO_TCP, ntohs(tcp->dst));
> > +	if (con == NULL)
> > +		goto bad;
> > +	tcb = &con->tcb;
> > +
> > +	/* segment arrives */
> > +	seg_last = seg_seq + seg_len - 1;
> > +	rcv_wnd = tcb->rcv_wnd;
> > +	rcv_nxt = tcb->rcv_nxt;
> > +
> > +	if (seg_len == 0 && rcv_wnd == 0)
> > +		seg_accept = seg_seq == rcv_nxt;
> > +	if (seg_len == 0 && rcv_wnd > 0)
> > +		seg_accept = rcv_nxt <= seg_seq && seg_seq < (rcv_nxt + rcv_wnd);
> > +	if (seg_len > 0 && rcv_wnd == 0)
> > +		seg_accept = 0; /* not acceptable */
> > +	if (seg_len > 0 && rcv_wnd > 0)
> > +		seg_accept = (rcv_nxt <= seg_seq && seg_seq < (rcv_nxt + rcv_wnd))
> > +			|| (rcv_nxt <= seg_last && seg_last < (rcv_nxt + rcv_wnd));
> > +
> > +	switch (con->state) {
> > +	case TCP_CLOSED:
> > +		if (flag & TCP_FLAG_RST) {
> > +			goto drop;
> > +		}
> > +		if (flag & TCP_FLAG_ACK) {
> > +			con->tcp->seq = 0;
> > +			con->tcp->ack = htonl(seg_seq + seg_len);
> > +			con->ret = tcp_send(con, 0, TCP_FLAG_RST | TCP_FLAG_ACK);
> > +		} else  {
> > +			con->tcp->seq = htonl(seg_ack);
> > +			con->ret = tcp_send(con, 0, TCP_FLAG_RST);
> > +		}
> > +		break;
> > +	case TCP_LISTEN:
> > +		/* TODO */
> > +		break;
> > +	case TCP_SYN_SENT:
> > +		if (flag & TCP_FLAG_ACK) {
> > +			if (seg_ack <= tcb->iss || seg_ack > tcb->snd_nxt) {
> > +				if (flag & TCP_FLAG_RST)
> > +					goto drop;
> > +				con->tcp->seq = htonl(seg_ack);
> > +				return tcp_send(con, 0, TCP_FLAG_RST);
> > +			}
> > +			if (tcb->snd_una > seg_ack || seg_ack > tcb->snd_nxt)
> > +				goto drop; /* unacceptable */
> > +		}
> > +		if (flag & TCP_FLAG_RST) {
> > +			con->state = TCP_CLOSED;
> > +			con->ret = -ENETRESET;
> > +			break;
> > +		}
> > +		if ((flag & TCP_FLAG_SYN) && !(flag & TCP_FLAG_RST)) {
> > +			tcb->irs = seg_seq;
> > +			tcb->rcv_nxt = seg_seq + 1;
> > +			if (flag & TCP_FLAG_ACK)
> > +				tcb->snd_una = seg_ack;
> > +			if (tcb->snd_una > tcb->iss) {
> > +				con->state = TCP_ESTABLISHED;
> > +				con->tcp->seq = htonl(tcb->snd_nxt);
> > +				con->tcp->ack = htonl(tcb->rcv_nxt);
> > +				con->ret = tcp_send(con, 0, TCP_FLAG_ACK);
> > +			} else {
> > +				con->state = TCP_SYN_RECV;
> > +				tcb->snd_nxt = tcb->iss + 1;
> > +				con->tcp->seq = htonl(tcb->iss);
> > +				con->tcp->ack = htonl(tcb->rcv_nxt);
> > +				con->ret = tcp_send(con, 0, TCP_FLAG_SYN | TCP_FLAG_ACK);
> > +			}
> > +		}
> > +		break;
> > +	case TCP_SYN_RECV:
> > +	case TCP_ESTABLISHED:
> > +		if (flag & TCP_FLAG_RST) {
> > +			/* TODO: if passive open then return to LISTEN */
> > +			con->state = TCP_CLOSED;
> > +			con->ret = -ECONNREFUSED;
> > +			break;
> > +		}
> > +		if (!seg_accept) {
> > +			/* segment is not acceptable, send an ack unless RST bit
> > +			 * is set (done above) */
> > +			con->tcp->seq = htonl(tcb->snd_nxt);
> > +			con->tcp->ack = htonl(tcb->rcv_nxt);
> > +			con->ret = tcp_send(con, 0, TCP_FLAG_ACK);
> > +			goto drop;
> > +		}
> > +		if (flag & TCP_FLAG_FIN && flag & TCP_FLAG_ACK)
> > +			con->state = TCP_CLOSE_WAIT;
> > +
> > +		if (flag & TCP_FLAG_ACK)
> > +			tcb->snd_una = seg_ack;
> > +
> > +		tcb->rcv_nxt += seg_len;
> > +		con->tcp->seq = htonl(tcb->snd_nxt);
> > +		if (seg_len) {
> > +			con->tcp->ack = htonl(tcb->rcv_nxt);
> > +			con->ret = tcp_send(con, 0, TCP_FLAG_ACK |
> > +					    /* send FIN+ACK if FIN is set */
> > +					    (flag & TCP_FLAG_FIN));
> > +		}
> > +		con->handler(con->priv, pkt, len);
> > +		break;
> > +	case TCP_FIN_WAIT1:
> > +		if (flag & TCP_FLAG_FIN)
> > +			con->state = TCP_CLOSING;
> > +		if (flag & TCP_FLAG_ACK)
> > +			tcb->snd_una = seg_ack;
> > +		/* fall-through */
> > +	case TCP_FIN_WAIT2:
> > +		tcb->rcv_nxt += seg_len;
> > +		con->tcp->seq = htonl(tcb->snd_nxt);
> > +		if (seg_len) {
> > +			con->tcp->ack = htonl(tcb->rcv_nxt);
> > +			con->ret = tcp_send(con, 0, TCP_FLAG_ACK);
> > +		}
> > +	case TCP_CLOSE_WAIT:
> > +		/* all segment queues should be flushed */
> > +		if (flag & TCP_FLAG_RST) {
> > +			con->state = TCP_CLOSED;
> > +			con->ret = -ENETRESET;
> > +			break;
> > +		}
> > +		break;
> > +	case TCP_CLOSING:
> > +		con->state = TCP_TIME_WAIT;
> > +	case TCP_LAST_ACK:
> > +	case TCP_TIME_WAIT:
> > +		if (flag & TCP_FLAG_RST) {
> > +			con->state = TCP_CLOSED;
> > +			con->ret = 0;
> > +		}
> > +		break;
> > +	}
> > +	return con->ret;
> > +drop:
> > +	return 0;
> > +bad:
> > +	net_bad_packet(pkt, len);
> > +	return 0;
> > +}
> > +
> >  static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
> >  {
> >  	struct ethernet *et = (struct ethernet *)pkt;
> > @@ -711,6 +1115,8 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
> >  		return net_handle_icmp(edev, pkt, len);
> >  	case IPPROTO_UDP:
> >  		return net_handle_udp(pkt, len);
> > +	case IPPROTO_TCP:
> > +		return net_handle_tcp(pkt, len);
> >  	}
> >  
> >  	return 0;
> > -- 
> > 2.17.1
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 






